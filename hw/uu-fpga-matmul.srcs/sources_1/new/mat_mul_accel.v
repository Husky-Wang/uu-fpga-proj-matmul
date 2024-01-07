`timescale 1ns / 1ps

// Edge Detector
module edge_det #(
    parameter FALLING = 1'b1
)(
    input wire anrst,
    input wire clk,
    input wire in_sig,
    output wire out_stb
);
    reg det_reg;
    
    generate
        if (FALLING) begin
            assign out_stb = ~in_sig & det_reg;
        end else begin
            assign out_stb = in_sig & ~det_reg;
        end
    endgenerate

    always @ (posedge(clk) or negedge(anrst)) begin
        if (!anrst) begin
            det_reg <= FALLING;
        end else begin
            det_reg <= in_sig;
        end
    end
endmodule

// Why do I hate myself
module axis_ctrl_if # (
    parameter integer AXIS_DATA_WIDTH = 32,
    parameter integer MAT_MAX_ROW = 200,
    parameter integer MAT_MAX_COL = 69,
    
    // Calculated Parameters
    localparam integer MAT_MAX_ROW_BITS = $clog2(MAT_MAX_ROW),
    localparam integer MAT_MAX_COL_BITS = $clog2(MAT_MAX_COL)
)(
    // Clock and Reset
    input wire clk,
    input wire anrst,

    // AXI-Stream Control Interface
    output reg ctrl_axis_tready,
    input wire ctrl_axis_tvalid,
    input wire ctrl_axis_tlast,
    input wire [AXIS_DATA_WIDTH - 1 : 0] ctrl_axis_tdata,
        
    // AXI-Stream Status Interface
    output reg stat_axis_tvalid,
    input wire stat_axis_tready,
    output wire stat_axis_tlast,
    output reg [AXIS_DATA_WIDTH - 1 : 0] stat_axis_tdata,

    // Parameters
    output wire [MAT_MAX_ROW_BITS - 1 : 0] mat_row_size,
    output wire [MAT_MAX_COL_BITS - 1 : 0] mat_col_size,
    
    // Control Signal
    output reg start_stb,

    // Status Signal
    input wire [1 : 0] err,
    input wire finish
);
    /* Handle Parameter Latching */
    reg [AXIS_DATA_WIDTH - 1 : 0] app_data [1 : 0];
    reg update_params;
    always @ (posedge(clk) or negedge(anrst)) begin
        if (!anrst) begin
            app_data[0] <= 'b0;
            app_data[1] <= 'b0;
        end else begin
            if (ctrl_axis_tready && ctrl_axis_tvalid && update_params) begin
                app_data[0] <= ctrl_axis_tdata;
                app_data[1] <= app_data[0];
            end
        end
    end

    assign mat_row_size = app_data[1][MAT_MAX_ROW_BITS - 1 : 0];
    assign mat_col_size = app_data[0][MAT_MAX_COL_BITS - 1 : 0];

    /* Handle Status Output Counting */
    reg [2 : 0] stat_cnt;
    reg stat_cnt_en, stat_cnt_clear;
    wire stat_cnt_last;
    always @ (posedge(clk) or negedge(anrst)) begin
        if (!anrst) begin
            stat_cnt <= 3'b0;
        end else begin
            if (stat_cnt_clear) begin
                stat_cnt <= 'b0;
            end else if (stat_cnt_en && !stat_cnt_last) begin
                stat_cnt <= stat_cnt + 1;
            end 
        end
    end

    /* Handle Status Output Latching */
    reg [1 : 0] err_reg;
    reg update_err;
    always @ (posedge(clk) or negedge(anrst)) begin
        if (!anrst) begin
            err_reg <= 2'b0;
        end else begin
            if (update_err) begin
                err_reg <= err;
            end
        end
    end

    always @ (*) begin
        case (stat_cnt)
            0: begin
                stat_axis_tdata = {4'h5, {(AXIS_DATA_WIDTH - 4){1'b0}}};
            end
            5: begin
                stat_axis_tdata = {{(AXIS_DATA_WIDTH - 2){1'b0}}, err_reg};
            end
            default: begin
                stat_axis_tdata = 'b0;
            end
        endcase
    end

    assign stat_cnt_last = stat_cnt >= 5;
    assign stat_axis_tlast = stat_cnt_last;
    
    /* State Machine */
    // State Machine Declaration
    localparam integer
        // Accepts data until TLAST
        FSM_IDLE    = 3'd0,
        // Gives start strobe
        FSM_START   = 3'd1,
        // Wait for finish to rise
        FSM_BUSY    = 3'd2,
        // Output status
        FSM_OUTPUT  = 3'd3,
        // Wait for finish to drop
        FSM_WAIT    = 3'd4;
    reg [2 : 0] state, next_state;

    // State Machine Next State
    always @ (posedge(clk) or negedge(anrst)) begin
        if (!anrst) begin
            state <= FSM_WAIT;
        end else begin
            state <= next_state;
        end
    end

    // State Transitions
    always @ (*) begin
        case (state)
            FSM_IDLE: begin
                // Check if receiving the end of a control sequence
                if (ctrl_axis_tvalid && ctrl_axis_tlast) begin
                    // Transfer to FSM_START
                    next_state = FSM_START;
                end else begin
                    // Do not transfer
                    next_state = state;
                end
            end
            FSM_START: begin
                // Transfer to FSM_BUSY
                next_state = FSM_BUSY;
            end
            FSM_BUSY: begin
                // Check if finish is high
                if (finish) begin
                    // Transfer to FSM_OUTPUT
                    next_state = FSM_OUTPUT;
                end else begin
                    // Do not transfer
                    next_state = state;
                end
            end
            FSM_OUTPUT: begin
                // Check if sending the end of a status sequence
                if (stat_axis_tready && stat_axis_tlast) begin
                    // Transfer to FSM_WAIT
                    next_state = FSM_WAIT;
                end else begin
                    // Do not transfer
                    next_state = state;
                end
            end
            FSM_WAIT: begin
                // Check if finish is high
                if (finish) begin
                    // Do not transfer
                    next_state = state;
                end else begin
                    // Transfer to FSM_IDLE
                    next_state = FSM_IDLE;
                end
            end
            default: begin
                next_state = FSM_WAIT;
            end
        endcase
    end

    // State Machine Combinational Output Logic
    always @ (*) begin
        case (state)
            FSM_IDLE: begin
                ctrl_axis_tready = 1'b1;
                stat_axis_tvalid = 1'b0;
                start_stb = 1'b0;
                update_params = 1'b1;
                update_err = 1'b0;
                stat_cnt_en = 1'b0;
                stat_cnt_clear = 1'b1;
            end
            FSM_START: begin
                ctrl_axis_tready = 1'b0;
                stat_axis_tvalid = 1'b0;
                start_stb = 1'b1;
                update_params = 1'b0;
                update_err = 1'b0;
                stat_cnt_en = 1'b0;
                stat_cnt_clear = 1'b1;
            end
            FSM_BUSY: begin
                ctrl_axis_tready = 1'b0;
                stat_axis_tvalid = 1'b0;
                start_stb = 1'b0;
                update_params = 1'b0;
                update_err = 1'b1;
                stat_cnt_en = 1'b0;
                stat_cnt_clear = 1'b1;
            end
            FSM_OUTPUT: begin
                ctrl_axis_tready = 1'b0;
                stat_axis_tvalid = 1'b1;
                start_stb = 1'b0;
                update_params = 1'b0;
                update_err = 1'b0;
                stat_cnt_en = 1'b1;
                stat_cnt_clear = 1'b0;
            end
            FSM_WAIT: begin
                ctrl_axis_tready = 1'b0;
                stat_axis_tvalid = 1'b0;
                start_stb = 1'b0;
                update_params = 1'b0;
                update_err = 1'b0;
                stat_cnt_en = 1'b0;
                stat_cnt_clear = 1'b1;
            end
            default: begin
                ctrl_axis_tready = 1'b0;
                stat_axis_tvalid = 1'b0;
                start_stb = 1'b0;
                update_params = 1'b0;
                update_err = 1'b0;
                stat_cnt_en = 1'b0;
                stat_cnt_clear = 1'b1;
            end
        endcase
    end
endmodule

// Accelerator Top Unit
module mat_mul # (
    parameter integer CTRL_STAT_AXIS_DATA_WIDTH = 32,
    parameter integer PAYLOAD_AXIS_DATA_WIDTH = 32,

    parameter integer WORD_WIDTH = 32,
    parameter integer FRACTIONAL_BITS = 24,
    parameter integer MAT_MAX_ROW = 200,
    parameter integer MAT_MAX_COL = 69
)(
    // Clock and Reset
    input wire clk,
    input wire anrst,

    // AXI-Stream Control Interface
    output wire ctrl_axis_tready,
    input wire ctrl_axis_tvalid,
    input wire ctrl_axis_tlast,
    input wire [CTRL_STAT_AXIS_DATA_WIDTH - 1 : 0] ctrl_axis_tdata,
        
    // AXI-Stream Status Interface
    output wire stat_axis_tvalid,
    input wire stat_axis_tready,
    output wire stat_axis_tlast,
    output wire [CTRL_STAT_AXIS_DATA_WIDTH - 1 : 0] stat_axis_tdata,

    // AXI-Stream Slave Payload Interface
    output wire in_axis_tready,
    input wire in_axis_tvalid,
    input wire in_axis_tlast,
    input wire [PAYLOAD_AXIS_DATA_WIDTH - 1 : 0] in_axis_tdata,
        
    // AXI-Stream Master Payload Interface
    output wire out_axis_tvalid,
    input wire out_axis_tready,
    output wire out_axis_tlast,
    output wire [PAYLOAD_AXIS_DATA_WIDTH - 1 : 0] out_axis_tdata
);

    wire [$clog2(MAT_MAX_ROW) - 1 : 0] mat_row_size;
    wire [$clog2(MAT_MAX_COL) - 1 : 0] mat_col_size;
    wire [1 : 0] err;
    wire [$clog2(MAT_MAX_ROW * MAT_MAX_COL) - 1 : 0] addr_a;
    wire [$clog2(MAT_MAX_ROW) - 1 : 0] addr_b, addr_r;
    wire [WORD_WIDTH - 1 : 0] data_a, data_b, data_r;
    wire start_stb, finish,
        we_a, we_b, we_r,
        re_a, re_b, re_r,
        mac_clear;

    axis_ctrl_if # (
        .AXIS_DATA_WIDTH(CTRL_STAT_AXIS_DATA_WIDTH),
        .MAT_MAX_ROW(MAT_MAX_ROW),
        .MAT_MAX_COL(MAT_MAX_COL)
    ) axis_ctrl_inst (
        .clk(clk),
        .anrst(anrst),
        .ctrl_axis_tready(ctrl_axis_tready),
        .ctrl_axis_tvalid(ctrl_axis_tvalid),
        .ctrl_axis_tlast(ctrl_axis_tlast),
        .ctrl_axis_tdata(ctrl_axis_tdata),
        .stat_axis_tvalid(stat_axis_tvalid),
        .stat_axis_tready(stat_axis_tready),
        .stat_axis_tlast(stat_axis_tlast),
        .stat_axis_tdata(stat_axis_tdata),
        .mat_row_size(mat_row_size),
        .mat_col_size(mat_col_size),
        .start_stb(start_stb),
        .err(err),
        .finish(finish)
    );

    addr_ctrl # (
        .MAT_MAX_ROW(MAT_MAX_ROW),
        .MAT_MAX_COL(MAT_MAX_COL)
    ) addr_ctrl_inst (
        .clk(clk),
        .anrst(anrst),
        .in_axis_tready(in_axis_tready),
        .in_axis_tvalid(in_axis_tvalid),
        .in_axis_tlast(in_axis_tlast),
        .out_axis_tvalid(out_axis_tvalid),
        .out_axis_tready(out_axis_tready),
        .out_axis_tlast(out_axis_tlast),
        .mat_row_size(mat_row_size),
        .mat_col_size(mat_col_size),
        .start_stb(start_stb),
        .err(err),
        .finish(finish),
        .we_a(we_a),
        .we_b(we_b),
        .we_r(we_r),
        .re_a(re_a),
        .re_b(re_b),
        .re_r(re_r),
        .addr_a(addr_a),
        .addr_b(addr_b),
        .addr_r(addr_r),
        .mac_clear(mac_clear)
    );

    alu_mac # (
        .WORD_WIDTH(WORD_WIDTH),
        .FRACTIONAL_BITS(FRACTIONAL_BITS)
    ) alu_mac_inst (
        .clk(clk),
        .anrst(anrst),
        .clear(mac_clear),
        .in_a(data_a),
        .in_b(data_b),
        .out(data_r)
    );

    bram # (
        .WORD_WIDTH(WORD_WIDTH),
        .W_WORD_WIDTH_WORDS(1),
        .R_WORD_WIDTH_WORDS(1),
        .MEM_SIZE_WORDS(MAT_MAX_ROW * MAT_MAX_COL)
    ) bram_a (
        .clk(clk),
        .w_addr(addr_a),
        .w_data(in_axis_tdata),
        .we(we_a),
        .r_addr(addr_a),
        .r_data(data_a),
        .re(re_a)
    );

    bram # (
        .WORD_WIDTH(WORD_WIDTH),
        .W_WORD_WIDTH_WORDS(1),
        .R_WORD_WIDTH_WORDS(1),
        .MEM_SIZE_WORDS(MAT_MAX_ROW)
    ) bram_b (
        .clk(clk),
        .w_addr(addr_b),
        .w_data(in_axis_tdata),
        .we(we_b),
        .r_addr(addr_b),
        .r_data(data_b),
        .re(re_b)
    );

    bram # (
        .WORD_WIDTH(WORD_WIDTH),
        .W_WORD_WIDTH_WORDS(1),
        .R_WORD_WIDTH_WORDS(1),
        .MEM_SIZE_WORDS(MAT_MAX_ROW)
    ) bram_r (
        .clk(clk),
        .w_addr(addr_r),
        .w_data(data_r),
        .we(we_r),
        .r_addr(addr_r),
        .r_data(out_axis_tdata),
        .re(re_r)
    );
endmodule
