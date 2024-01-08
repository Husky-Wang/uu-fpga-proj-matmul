`timescale 1ns / 1ps

/* Signal Interfaces */

// DUT Misc Interface
interface dut_misc_if (
    // Clock and Reset
    input clk,
    input anrst
);
endinterface

// AXIS Interface
interface axis_if # (
    parameter integer DATA_WIDTH = 32
);  
    logic [DATA_WIDTH - 1 : 0] tdata;
    logic tready, tlast, tvalid;
endinterface

/* Classes */
// Matrix Class
// With fixed point support
class matrix # (
    parameter integer DATA_WIDTH = 32,
    parameter integer FRAC_BITS = 0
);
    // Matrix Size
    int size_row, size_col;
    // Matrix Data Array
    rand bit signed [DATA_WIDTH - 1 : 0] data[];
    // Matrix Data Randomization Constraint
    constraint size_constr {
        data.size() == size_row * size_col;
    };
    constraint data_constr {
        foreach (data[i]) {
            data[i] inside {[-1024 : 1024]};
        }
    };

    // Constructor
    function new(int arg_size_row, int arg_size_col);
        this.size_row = arg_size_row;
        this.size_col = arg_size_col;
        this.data = new[size_row * size_col];
    endfunction

    // Pretty Printing
    function void show();
        for (int row = 0; row < this.size_row; row = row + 1) begin
            for (int col = 0; col < this.size_col; col = col + 1) begin
                $display(
                    "[%d][%d] = %d",
                    row,
                    col,
                    data[row * this.size_col + col]
                );
            end
        end
    endfunction

    // Multiply with another matrix
    function bit mul (
        matrix # (.DATA_WIDTH(this.DATA_WIDTH), .FRAC_BITS(this.FRAC_BITS)) b,
        matrix # (.DATA_WIDTH(this.DATA_WIDTH), .FRAC_BITS(this.FRAC_BITS)) r
    );
        int row, col, count;
        bit signed [this.DATA_WIDTH * 2 - 1 : 0] tmp;
        bit signed [this.DATA_WIDTH - 1 : 0] sum;

        if (this.size_col != b.size_row ||
            this.size_row != r.size_row &&
            b.size_col != r.size_col) begin
            return 1;
        end

        for (row = 0; row < r.size_row; row = row + 1) begin
            for (col = 0; col < r.size_col; col = col + 1) begin
                sum = 0;
                for (count = 0; count < this.size_col; count = count + 1) begin
                    tmp = this.data[row * this.size_col + count] *
                        b.data[count * b.size_col + col];
                    sum = sum + (tmp >> FRAC_BITS);
                end
                r.data[row * r.size_col + col] = sum;
            end
        end
        return 0;
    endfunction
endclass

// Testbench Class
class tb # (
    parameter integer CTRL_STAT_AXIS_DATA_WIDTH = 32,
    parameter integer PAYLOAD_AXIS_DATA_WIDTH = 32,
    parameter integer FRAC_BITS = 0
);
    // DUT Interface
    virtual dut_misc_if dut_misc;
    virtual axis_if dut_axis_ctrl, dut_axis_stat, dut_axis_data_in, dut_axis_data_out;

    // Matrixes
    matrix # (.DATA_WIDTH(PAYLOAD_AXIS_DATA_WIDTH), .FRAC_BITS(FRAC_BITS)) mat_a;
    matrix # (.DATA_WIDTH(PAYLOAD_AXIS_DATA_WIDTH), .FRAC_BITS(FRAC_BITS)) mat_b;
    matrix # (.DATA_WIDTH(PAYLOAD_AXIS_DATA_WIDTH), .FRAC_BITS(FRAC_BITS)) mat_r;
    matrix # (.DATA_WIDTH(PAYLOAD_AXIS_DATA_WIDTH), .FRAC_BITS(FRAC_BITS)) mat_r_ref;

    // Constructor
    function new(
        virtual dut_misc_if arg_dut_misc,
        virtual axis_if arg_dut_axis_ctrl,
        virtual axis_if arg_dut_axis_stat,
        virtual axis_if arg_dut_axis_data_in,
        virtual axis_if arg_dut_axis_data_out
    );
        // Save DUT Interface
        this.dut_misc = arg_dut_misc;
        this.dut_axis_ctrl = arg_dut_axis_ctrl;
        this.dut_axis_stat = arg_dut_axis_stat;
        this.dut_axis_data_in = arg_dut_axis_data_in;
        this.dut_axis_data_out = arg_dut_axis_data_out;
    endfunction

    // Initialize everything
    function void init(int arg_a_row, int arg_a_col);
        // (Re-)Create Matrixes
        this.mat_a = new(arg_a_row, arg_a_col);
        this.mat_b = new(arg_a_col, 1);
        this.mat_r = new(arg_a_row, 1);
        this.mat_r_ref = new(arg_a_row, 1);

        // Initialize Input Matrix (A and B)
        this.mat_a.randomize();
        this.mat_b.randomize();
        $display("Init Mat_A");
        this.mat_a.show();
        $display("Init Mat_B");
        this.mat_b.show();

        // Initialize Result Matrix (R_REF)
        if (this.mat_a.mul(this.mat_b, this.mat_r_ref) != 0) begin
            $display("Failed to exec MAT_A * MAT_B");
        end

        $display("Init Mat_R (REF)");
        this.mat_r_ref.show();

        // Initial state for all driven signals
        this.dut_axis_ctrl.tvalid = 1'b0;
        this.dut_axis_ctrl.tlast = 1'b0;
        this.dut_axis_ctrl.tdata = 'b0;

        this.dut_axis_stat.tready = 1'b0;

        this.dut_axis_data_in.tvalid = 1'b0;
        this.dut_axis_data_in.tlast = 1'b0;
        this.dut_axis_data_in.tdata = 'b0;

        this.dut_axis_data_out.tready = 1'b0;
    endfunction

    task load_ctrl();
        int cnt;
        bit [CTRL_STAT_AXIS_DATA_WIDTH : 0] ctrl_data_buffer [5 : 0];
        ctrl_data_buffer[0] = 32'ha000_0000;
        ctrl_data_buffer[1] = 'b0;
        ctrl_data_buffer[2] = 'b0;
        ctrl_data_buffer[3] = 'b0;
        ctrl_data_buffer[4] = this.mat_a.size_row;
        ctrl_data_buffer[5] = this.mat_a.size_col;

        // Transmit
        @ (posedge(this.dut_misc.clk));
        this.dut_axis_ctrl.tvalid = 1'b1;
        for (cnt = 0; cnt < 6; cnt = cnt + 1) begin
            this.dut_axis_ctrl.tdata = ctrl_data_buffer[cnt];
            
            // TLAST
            this.dut_axis_ctrl.tlast = cnt >= 5;

            // Wait for clk
            @ (posedge(this.dut_misc.clk));
                    
            // wait for TREADY
            while (!this.dut_axis_ctrl.tready) begin
                @ (posedge(this.dut_misc.clk));
            end
        end

        // Reset used signals
        this.dut_axis_ctrl.tvalid = 1'b0;
        this.dut_axis_ctrl.tlast = 1'b0;
        this.dut_axis_ctrl.tdata = 'b0;
    endtask

    task load_data();
        int row, col;

        // Transmit Mat_A
        @ (posedge(this.dut_misc.clk));
        this.dut_axis_data_in.tvalid = 1'b1;
        // TLAST
        this.dut_axis_data_in.tlast = 1'b0;
        for (row = 0; row < this.mat_a.size_row; row = row + 1) begin
            for (col = 0; col < this.mat_a.size_col; col = col + 1) begin
                this.dut_axis_data_in.tdata = 
                    this.mat_a.data[row * this.mat_a.size_col + col];
                
                // Wait for clk
                @ (posedge(this.dut_misc.clk));

                // Wait for TREADY
                while (!this.dut_axis_data_in.tready) begin
                    @ (posedge(this.dut_misc.clk));
                end
            end
        end

        // Reset used signals
        this.dut_axis_data_in.tvalid = 1'b0;
        this.dut_axis_data_in.tlast = 1'b0;
        this.dut_axis_data_in.tdata = 'b0;

        // Transmit Mat_B (As a Vector)
        @ (posedge(this.dut_misc.clk));
        this.dut_axis_data_in.tvalid = 1'b1;
        for (row = 0; row < this.mat_b.size_row; row = row + 1) begin
            this.dut_axis_data_in.tdata = this.mat_b.data[row];
            
            // TLAST
            this.dut_axis_data_in.tlast = row == this.mat_b.size_row - 1;
            
            // Wait for clk
            @ (posedge(this.dut_misc.clk));
            // Wait for TREADY
            while (!this.dut_axis_data_in.tready) begin
                @ (posedge(this.dut_misc.clk));
            end
        end

        // Reset used signals
        this.dut_axis_data_in.tvalid = 1'b0;
        this.dut_axis_data_in.tlast = 1'b0;
        this.dut_axis_data_in.tdata = 'b0;
    endtask

    task read_data();
        int cnt;

        // Receive Mat_R (As a Vector)
        @ (posedge(this.dut_misc.clk));
        this.dut_axis_data_out.tready = 1'b1;

        cnt = 0;
        while (1'b1) begin
            @ (posedge(this.dut_misc.clk));
            if (this.dut_axis_data_out.tvalid) begin
                this.mat_r.data[cnt] = this.dut_axis_data_out.tdata;
                cnt = cnt + 1;

                if (this.dut_axis_data_out.tlast) begin
                    break;
                end
            end
        end

        // Reset used signals
        this.dut_axis_data_out.tready = 1'b0;

        $display("Read MAT_R from DUT");
        this.mat_r.show();
    endtask

    task read_stat();
        $display("Reading Status Bytes");

        // Receive and dispaly status
        @ (posedge(this.dut_misc.clk));
        this.dut_axis_stat.tready = 1'b1;

        while (1'b1) begin
            @ (posedge(this.dut_misc.clk));
            if (this.dut_axis_stat.tvalid) begin
                $display ("%8h", this.dut_axis_stat.tdata);

                if (this.dut_axis_stat.tlast) begin
                    break;
                end
            end
        end

        // Reset used signals
        this.dut_axis_stat.tready = 1'b0;
    endtask

    function bit verify_data();
        foreach (this.mat_r.data[i]) begin
            if (this.mat_r.data[i] != this.mat_r_ref.data[i]) begin
                return 0;
            end
        end
        return 1;
    endfunction
endclass

/* Modules */
// DUT Wrapper to use Interface
module dut_wrapper # (
    parameter integer CTRL_DATA_WIDTH = 32,
    parameter integer WORD_WIDTH = 32,
    parameter integer FRAC_BITS = 0,
    parameter integer MAT_MAX_ROW = 64,
    parameter integer MAT_MAX_COL = 128
)(
    dut_misc_if misc_if,
    axis_if ctrl_if,
    axis_if stat_if,
    axis_if data_in_if,
    axis_if data_out_if
);
    // Assign Interface Signals to DUT
    mat_mul # (
        .CTRL_DATA_WIDTH(CTRL_DATA_WIDTH),
        .WORD_WIDTH(WORD_WIDTH),
        .FRAC_BITS(FRAC_BITS),
        .MAT_MAX_ROW(MAT_MAX_ROW),
        .MAT_MAX_COL(MAT_MAX_COL)
    ) accelerator (
        .clk(misc_if.clk),
        .anrst(misc_if.anrst),
        .ctrl_axis_tready(ctrl_if.tready),
        .ctrl_axis_tvalid(ctrl_if.tvalid),
        .ctrl_axis_tlast(ctrl_if.tlast),
        .ctrl_axis_tdata(ctrl_if.tdata),
        .stat_axis_tready(stat_if.tready),
        .stat_axis_tvalid(stat_if.tvalid),
        .stat_axis_tlast(stat_if.tlast),
        .stat_axis_tdata(stat_if.tdata),
        .in_axis_tready(data_in_if.tready),
        .in_axis_tvalid(data_in_if.tvalid),
        .in_axis_tlast(data_in_if.tlast),
        .in_axis_tdata(data_in_if.tdata),
        .out_axis_tready(data_out_if.tready),
        .out_axis_tvalid(data_out_if.tvalid),
        .out_axis_tlast(data_out_if.tlast),
        .out_axis_tdata(data_out_if.tdata)
    );
endmodule

/* Testbench Code */
// Top level module for testbench
module mat_mul_tb # ();
    // Clock and Reset
    reg clk;
    reg anrst;

    // DUT Interface Instances
    dut_misc_if dut_misc (clk, anrst);
    axis_if # (.DATA_WIDTH(32)) dut_axis_ctrl ();
    axis_if # (.DATA_WIDTH(32)) dut_axis_stat ();
    axis_if # (.DATA_WIDTH(32)) dut_axis_data_in ();
    axis_if # (.DATA_WIDTH(32)) dut_axis_data_out ();

    // DUT Module Instance
    dut_wrapper # (
        .CTRL_DATA_WIDTH(32),
        .WORD_WIDTH(32),
        .FRAC_BITS(8),
        .MAT_MAX_ROW(128),
        .MAT_MAX_COL(270)
    ) DUT (
        .misc_if(dut_misc),
        .ctrl_if(dut_axis_ctrl),
        .stat_if(dut_axis_stat),
        .data_in_if(dut_axis_data_in),
        .data_out_if(dut_axis_data_out)
    );

    // DUT Testbench Instance
    tb # (
        .CTRL_STAT_AXIS_DATA_WIDTH(32),
        .PAYLOAD_AXIS_DATA_WIDTH(32),
        .FRAC_BITS(8)
    ) tb_inst;

    // 100Mhz testbench clock
    always #5 clk = ~clk;
    
    initial begin
        // Create Class Instance
        tb_inst = new(
            dut_misc,
            dut_axis_ctrl,
            dut_axis_stat,
            dut_axis_data_in,
            dut_axis_data_out
        );

        // Initial state for clock and reset
        clk = 1'b0;
        anrst = 1'b1;
        
        // Assert reset for 16 cycles
        repeat (2) begin
            @ (posedge(clk));
        end
        anrst <= 1'b0;
        repeat (16) begin
            @ (posedge(clk));
        end
        anrst <= 1'b1;

        repeat (2) begin
            // Initialize Test Data
            tb_inst.init(128, 256);

            // Transmit Ctrl
            tb_inst.load_ctrl();

            // Transmit Data
            tb_inst.load_data();

            // Read Data
            tb_inst.read_data();

            // Read Status
            tb_inst.read_stat();

            // Check Result
            if (tb_inst.verify_data()) begin
                $display("Fika approved");
            end else begin
                $display("helvete");
            end
        end

        repeat (2) begin
            // Initialize Test Data
            tb_inst.init(16, 32);

            // Transmit Ctrl
            tb_inst.load_ctrl();

            // Transmit Data
            tb_inst.load_data();

            // Read Data
            tb_inst.read_data();

            // Read Status
            tb_inst.read_stat();

            // Check Result
            if (tb_inst.verify_data()) begin
                $display("Fika approved");
            end else begin
                $display("helvete");
            end
        end

        repeat (10) begin
            // Initialize Test Data
            tb_inst.init(3, 5);

            // Transmit Ctrl
            tb_inst.load_ctrl();

            // Transmit Data
            tb_inst.load_data();

            // Read Data
            tb_inst.read_data();

            // Read Status
            tb_inst.read_stat();

            // Check Result
            if (tb_inst.verify_data()) begin
                $display("Fika approved");
            end else begin
                $display("helvete");
            end
        end

        // Some extra cycles
        repeat (128) begin
            @ (posedge(clk));
        end

        $stop;
    end
endmodule
