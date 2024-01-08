`timescale 1ns / 1ps

// Dimension Counter
// Saturate at top value
module dim_counter #
(
    parameter integer COUNTER_BITS = $clog2(128)
)
(
    input wire clk,
    input wire anrst,
    input wire en,
    input wire clear,
    input wire [COUNTER_BITS - 1 : 0] top,
    output reg [COUNTER_BITS - 1 : 0] count,
    output wire last
);
    assign last = count >= top;
    
    always @ (posedge (clk) or negedge (anrst)) begin
        if (!anrst) begin
            count <= 'b0;
        end else begin
            if (clear) begin
                count <= 'b0;
            end else if (en && !last) begin
                count <= count + 1;
            end 
        end
    end
endmodule

// Pile of stinking poo
module addr_ctrl # (
    parameter integer MAT_MAX_ROW = 64,
    parameter integer MAT_MAX_COL = 128,
    parameter integer PARAM_DATA_WIDTH = 32,

    // Calculated Parameters
    localparam integer MAT_MAX_ROW_BITS = $clog2(MAT_MAX_ROW),
    localparam integer MAT_MAX_COL_BITS = $clog2(MAT_MAX_COL),
    localparam integer MAT_MAX_SIZE = MAT_MAX_ROW * MAT_MAX_COL,
    localparam integer MAT_MAX_SIZE_BITS = $clog2(MAT_MAX_SIZE),
    localparam integer VECT_B_SIZE = MAT_MAX_COL,
    localparam integer VECT_B_SIZE_BITS = $clog2(VECT_B_SIZE),
    localparam integer VECT_R_SIZE = MAT_MAX_ROW,
    localparam integer VECT_R_SIZE_BITS = $clog2(VECT_R_SIZE)
)(
    // Clock and Reset
    input wire clk,
    input wire anrst,
    
    // AXI-Stream Slave
    output reg in_axis_tready,
    input wire in_axis_tvalid,
    input wire in_axis_tlast,
        
    // AXI-Stream Master
    input wire out_axis_tready,
    output reg out_axis_tvalid,
    output reg out_axis_tlast,

    // Input Parameters
    input wire [PARAM_DATA_WIDTH - 1 : 0] mat_row_size,
    input wire [PARAM_DATA_WIDTH - 1 : 0] mat_col_size,
    
    // Input Control Signal
    input wire start_stb,

    // Output Status Signal
    output wire [1 : 0] err,
    output reg finish,
    
    // Output Control Signal
    output reg we_a,
    output reg we_b,
    output reg we_r,
    output reg re_a,
    output reg re_b,
    output reg re_r,
    output wire [MAT_MAX_SIZE_BITS - 1 : 0] addr_a,
    output wire [VECT_B_SIZE_BITS - 1 : 0] addr_b,
    output wire [VECT_R_SIZE_BITS - 1 : 0] addr_r,
    output reg mac_clear
);
    /* Parameter Handling */
    // Parameter Registers
    reg [PARAM_DATA_WIDTH - 1 : 0] mat_row_size_reg;
    reg [PARAM_DATA_WIDTH - 1 : 0] mat_col_size_reg;

    reg update_params;
    always @ (posedge(clk) or negedge(anrst)) begin
        if (!anrst) begin
            mat_row_size_reg <= 'b0;
            mat_col_size_reg <= 'b0;
        end else begin
            if (update_params) begin
                mat_row_size_reg <= mat_row_size;
                mat_col_size_reg <= mat_col_size;
            end
        end
    end

    // Parameter error checking
    assign err[1] = mat_row_size_reg <= 0 || mat_row_size_reg > MAT_MAX_ROW;
    assign err[0] = mat_row_size_reg <= 0 || mat_col_size_reg > MAT_MAX_COL;

    /* Address Handling */
    // Matrix A Row Counter
    wire [MAT_MAX_ROW_BITS - 1 : 0] a_row_cnt_top;
    wire [MAT_MAX_ROW_BITS - 1 : 0] a_row_cnt;
    wire a_row_cnt_last;
    reg a_row_cnt_en, a_row_cnt_clear;
    
    dim_counter # (
        .COUNTER_BITS(MAT_MAX_ROW_BITS)
    ) a_row_counter (
        .clk(clk),
        .anrst(anrst),
        .en(a_row_cnt_en),
        .clear(a_row_cnt_clear),
        .top(mat_row_size_reg - 1),
        .count(a_row_cnt),
        .last(a_row_cnt_last)
    );

    // Matrix A Col Counter
    wire [MAT_MAX_COL_BITS - 1 : 0] a_col_cnt;
    wire a_col_cnt_last;
    reg a_col_cnt_en, a_col_cnt_clear;

    dim_counter # (
        .COUNTER_BITS(MAT_MAX_COL_BITS)
    ) a_col_counter (
        .clk(clk),
        .anrst(anrst),
        .en(a_col_cnt_en),
        .clear(a_col_cnt_clear),
        .top(mat_col_size_reg - 1),
        .count(a_col_cnt),
        .last(a_col_cnt_last)
    );

    // Vector B Counter
    wire [VECT_B_SIZE_BITS - 1 : 0] b_cnt;
    wire b_cnt_last;
    reg b_cnt_en, b_cnt_clear;

    dim_counter # (
        .COUNTER_BITS(VECT_B_SIZE_BITS)
    ) b_counter (
        .clk(clk),
        .anrst(anrst),
        .en(b_cnt_en),
        .clear(b_cnt_clear),
        .top(mat_col_size_reg - 1),
        .count(b_cnt),
        .last(b_cnt_last)
    );
    
    // Vector R Counter
    wire [VECT_R_SIZE_BITS - 1 : 0] r_cnt;
    wire r_cnt_last;
    reg r_cnt_en, r_cnt_clear;

    dim_counter # (
        .COUNTER_BITS(VECT_R_SIZE_BITS)
    ) r_counter (
        .clk(clk),
        .anrst(anrst),
        .en(r_cnt_en),
        .clear(r_cnt_clear),
        .top(mat_row_size_reg - 1),
        .count(r_cnt),
        .last(r_cnt_last)
    );

    // Address generation
    assign addr_a = a_row_cnt * mat_col_size_reg + a_col_cnt;
    assign addr_b = b_cnt;
    assign addr_r = r_cnt;

    /* State Machine */
    // State Machine Declaration
    localparam integer
        // Idle
        FSM_IDLE      = 4'd0,
        // Check Parameter
        FSM_CHECK     = 4'd1,
        // Load Data
        FSM_INPUT_A   = 4'd2,
        FSM_INPUT_B   = 4'd3,
        // Do Calculation
        FSM_CALC_PRE  = 4'd4,
        FSM_CALC_VECT = 4'd5,
        FSM_CALC_NEXT = 4'd6,
        // Output Data
        FSM_OUT_PRE   = 4'd7,
        FSM_OUT       = 4'd8,
        // Parameter Error
        FSM_ERR       = 4'd9;
    reg [3 : 0] state, next_state;

    // State Machine Next State
    always @ (posedge(clk) or negedge(anrst)) begin
        if (!anrst) begin
            state <= FSM_IDLE;
        end else begin
            state <= next_state;
        end
    end

    // State Transitions
    always @ (*) begin
        case (state)
            FSM_IDLE: begin // Idle State
                // When start strobe is received
                if (start_stb) begin
                    // Transfer to FSM_CHECK
                    next_state = FSM_CHECK;
                end else begin
                    // Do not transfer
                    next_state = state;
                end
            end
            FSM_CHECK: begin // Check Parameters
                // Check if there is incorrect parameter
                if (err != 'b0) begin
                    // If there is incorrect parameter
                    // Transfer to FSM_ERR
                    next_state = FSM_ERR;
                end else begin
                    // If there is no incorrect parameter
                    // Transfer to FSM_INPUT_A
                    next_state = FSM_INPUT_A;
                end
            end
            FSM_INPUT_A: begin // Load matrix A
                // Check if matrix A is loading the last element
                if (a_row_cnt_last && a_col_cnt_last && in_axis_tvalid) begin
                    // Transfer to FSM_INPUT_B
                    next_state = FSM_INPUT_B;
                end else begin
                    // Do not transfer
                    next_state = state;
                end
            end
            FSM_INPUT_B: begin // Load vector B
                // Check if vector B is loading the last element
                if (b_cnt_last && in_axis_tvalid) begin
                    // Transfer to FSM_CALC_PRE
                    next_state = FSM_CALC_PRE;
                end else begin
                    // Do not transfer
                    next_state = state;
                end
            end
            FSM_CALC_PRE: begin // Do calculation preload
                // Transfer to FSM_CALC_VECT
                next_state = FSM_CALC_VECT;
            end
            FSM_CALC_VECT: begin // Do calculation current vector
                // Check if on last element of current vector
                if (b_cnt_last) begin
                    // Transfer to FSM_CALC_NEXT
                    next_state = FSM_CALC_NEXT;
                end else begin
                    // Do not transfer
                    next_state = state;
                end
            end
            FSM_CALC_NEXT: begin //Do calculation goto next vector
                // Check if on last element of everything
                if (a_row_cnt_last && a_col_cnt_last) begin
                    // Transfer to FSM_OUT_PRE
                    next_state = FSM_OUT_PRE;
                end else begin
                    // Transfer to FSM_CALC_PRE
                    next_state = FSM_CALC_PRE;
                end
            end
            FSM_OUT_PRE: begin // Output preload vector R
                // Transfer to FSM_OUT
                next_state = FSM_OUT;
            end
            FSM_OUT: begin     // Output vector R
                // Check if an element is being read
                if (out_axis_tready) begin
                    // Check if vector R is reading the last element
                    if (r_cnt_last) begin
                        // Transfer to FSM_IDLE
                        next_state = FSM_IDLE;
                    end else begin
                        // Transfer to FSM_OUT_PRE
                        next_state = FSM_OUT_PRE;
                    end
                end else begin
                    // Do not transfer
                    next_state = state;
                end
                
            end
            FSM_ERR: begin        // Parameter Error
                // Check if an element is being read as a dummy
                if (out_axis_tready) begin
                    // Transfer to FSM_IDLE
                    next_state = FSM_IDLE;
                end else begin
                    // Do not transfer
                    next_state = state;
                end
            end
            default: begin              // Invalid State
                next_state = FSM_IDLE;
            end
        endcase
    end

    // State Machine Combinational Output Logic
    always @ (*) begin
        case (state)
            FSM_IDLE: begin       // Idle State
                in_axis_tready = 1'b0;
                out_axis_tvalid = 1'b0;
                out_axis_tlast = 1'b0;
                finish = 1'b0;
                we_a = 1'b0;
                we_b = 1'b0;
                we_r = 1'b0;
                re_a = 1'b0;
                re_b = 1'b0;
                re_r = 1'b0;
                mac_clear = 1'b1;
                update_params = start_stb;
                a_row_cnt_en = 1'b0;
                a_row_cnt_clear = 1'b1;
                a_col_cnt_en = 1'b0;
                a_col_cnt_clear = 1'b1;
                b_cnt_en = 1'b0;
                b_cnt_clear = 1'b1;
                r_cnt_en = 1'b0;
                r_cnt_clear = 1'b1;
            end
            FSM_CHECK: begin      // Check Parameters
                in_axis_tready = 1'b0;
                out_axis_tvalid = 1'b0;
                out_axis_tlast = 1'b0;
                finish = 1'b0;
                we_a = 1'b0;
                we_b = 1'b0;
                we_r = 1'b0;
                re_a = 1'b0;
                re_b = 1'b0;
                re_r = 1'b0;
                mac_clear = 1'b1;
                update_params = 1'b0;
                a_row_cnt_en = 1'b0;
                a_row_cnt_clear = 1'b1;
                a_col_cnt_en = 1'b0;
                a_col_cnt_clear = 1'b1;
                b_cnt_en = 1'b0;
                b_cnt_clear = 1'b1;
                r_cnt_en = 1'b0;
                r_cnt_clear = 1'b1;
            end
            FSM_INPUT_A: begin    // Load matrix A
                in_axis_tready = 1'b1;
                out_axis_tvalid = 1'b0;
                out_axis_tlast = 1'b0;
                finish = 1'b0;
                we_a = in_axis_tvalid;
                we_b = 1'b0;
                we_r = 1'b0;
                re_a = 1'b0;
                re_b = 1'b0;
                re_r = 1'b0;
                mac_clear = 1'b1;
                update_params = 1'b0;
                a_row_cnt_en = in_axis_tvalid &&/* !a_row_cnt_last && */a_col_cnt_last;
                a_row_cnt_clear = in_axis_tvalid && a_row_cnt_last && a_col_cnt_last;
                a_col_cnt_en = in_axis_tvalid /*&& !a_col_cnt_last*/;
                a_col_cnt_clear = in_axis_tvalid && a_col_cnt_last;
                b_cnt_en = 1'b0;
                b_cnt_clear = 1'b1;
                r_cnt_en = 1'b0;
                r_cnt_clear = 1'b1;
            end
            FSM_INPUT_B: begin    // Load vector B
                in_axis_tready = 1'b1;
                out_axis_tvalid = 1'b0;
                out_axis_tlast = 1'b0;
                finish = 1'b0;
                we_a = 1'b0;
                we_b = in_axis_tvalid;
                we_r = 1'b0;
                re_a = 1'b0;
                re_b = 1'b0;
                re_r = 1'b0;
                mac_clear = 1'b1;
                update_params = 1'b0;
                a_row_cnt_en = 1'b0;
                a_row_cnt_clear = 1'b1;
                a_col_cnt_en = 1'b0;
                a_col_cnt_clear = 1'b1;
                b_cnt_en = in_axis_tvalid/* && !b_cnt_last*/;
                b_cnt_clear = in_axis_tvalid && b_cnt_last;
                r_cnt_en = 1'b0;
                r_cnt_clear = 1'b1;
            end
            FSM_CALC_PRE: begin // Do calculation preload
                in_axis_tready = 1'b0;
                out_axis_tvalid = 1'b0;
                out_axis_tlast = 1'b0;
                finish = 1'b0;
                we_a = 1'b0;
                we_b = 1'b0;
                we_r = 1'b0;
                re_a = 1'b0;
                re_b = 1'b0;
                re_r = 1'b0;
                mac_clear = 1'b1;
                update_params = 1'b0;
                a_row_cnt_en = 1'b0;
                a_row_cnt_clear = 1'b0;
                a_col_cnt_en = 1'b1;
                a_col_cnt_clear = 1'b0;
                b_cnt_en = 1'b1;
                b_cnt_clear = 1'b0;
                r_cnt_en = 1'b0;
                r_cnt_clear = 1'b0;
            end
            FSM_CALC_VECT: begin // Do calculation current vector
                in_axis_tready = 1'b0;
                out_axis_tvalid = 1'b0;
                out_axis_tlast = 1'b0;
                finish = 1'b0;
                we_a = 1'b0;
                we_b = 1'b0;
                we_r = 1'b0;
                re_a = 1'b1;
                re_b = 1'b1;
                re_r = 1'b0;
                mac_clear = 1'b0;
                update_params = 1'b0;
                a_row_cnt_en = 1'b0;
                a_row_cnt_clear = 1'b0;
                a_col_cnt_en = 1'b1;
                a_col_cnt_clear = 1'b0;
                b_cnt_en = 1'b1;
                b_cnt_clear = 1'b0;
                r_cnt_en = 1'b0;
                r_cnt_clear = 1'b0;
            end
            FSM_CALC_NEXT: begin // Do calculation goto next vector
                in_axis_tready = 1'b0;
                out_axis_tvalid = 1'b0;
                out_axis_tlast = 1'b0;
                finish = 1'b0;
                we_a = 1'b0;
                we_b = 1'b0;
                we_r = 1'b1;
                re_a = 1'b1;
                re_b = 1'b1;
                re_r = 1'b0;
                mac_clear = 1'b1;
                update_params = 1'b0;
                a_row_cnt_en = 1'b1;
                a_row_cnt_clear = a_row_cnt_last;
                a_col_cnt_en = 1'b0;
                a_col_cnt_clear = 1'b1;
                b_cnt_en = 1'b0;
                b_cnt_clear = 1'b1;
                r_cnt_en = 1'b1;
                r_cnt_clear = a_row_cnt_last;
            end
            FSM_OUT_PRE: begin // Output preload vector R
                in_axis_tready = 1'b0;
                out_axis_tvalid = 1'b0;
                out_axis_tlast = 1'b0;
                finish = 1'b1;
                we_a = 1'b0;
                we_b = 1'b0;
                we_r = 1'b0;
                re_a = 1'b0;
                re_b = 1'b0;
                re_r = 1'b0;
                mac_clear = 1'b1;
                update_params = 1'b0;
                a_row_cnt_en = 1'b0;
                a_row_cnt_clear = 1'b1;
                a_col_cnt_en = 1'b0;
                a_col_cnt_clear = 1'b1;
                b_cnt_en = 1'b0;
                b_cnt_clear = 1'b1;
                r_cnt_en = 1'b0;
                r_cnt_clear = 1'b0;
            end
            FSM_OUT: begin // Output vector R
                in_axis_tready = 1'b0;
                out_axis_tvalid = 1'b1;
                out_axis_tlast = r_cnt_last;
                finish = 1'b1;
                we_a = 1'b0;
                we_b = 1'b0;
                we_r = 1'b0;
                re_a = 1'b0;
                re_b = 1'b0;
                re_r = 1'b1;
                mac_clear = 1'b1;
                update_params = 1'b0;
                a_row_cnt_en = 1'b0;
                a_row_cnt_clear = 1'b1;
                a_col_cnt_en = 1'b0;
                a_col_cnt_clear = 1'b1;
                b_cnt_en = 1'b0;
                b_cnt_clear = 1'b1;
                r_cnt_en = out_axis_tready;
                r_cnt_clear = 1'b0;
            end
            FSM_ERR: begin // Parameter Error   ### NOT WORKING, SO TRY NOT TO MAKE MISTAKES
                in_axis_tready = 1'b0;
                out_axis_tvalid = 1'b1;
                out_axis_tlast = 1'b1;
                finish = 1'b1;
                we_a = 1'b0;
                we_b = 1'b0;
                we_r = 1'b0;
                re_a = 1'b0;
                re_b = 1'b0;
                re_r = 1'b0;
                mac_clear = 1'b1;
                update_params = 1'b0;
                a_row_cnt_en = 1'b0;
                a_row_cnt_clear = 1'b1;
                a_col_cnt_en = 1'b0;
                a_col_cnt_clear = 1'b1;
                b_cnt_en = 1'b0;
                b_cnt_clear = 1'b1;
                r_cnt_en = 1'b0;
                r_cnt_clear = 1'b1;
            end
            default: begin // Invalid State
                in_axis_tready = 1'b0;
                out_axis_tvalid = 1'b0;
                out_axis_tlast = 1'b0;
                finish = 1'b0;
                we_a = 1'b0;
                we_b = 1'b0;
                we_r = 1'b0;
                re_a = 1'b0;
                re_b = 1'b0;
                re_r = 1'b0;
                mac_clear = 1'b1;
                update_params = 1'b0;
                a_row_cnt_en = 1'b0;
                a_row_cnt_clear = 1'b1;
                a_col_cnt_en = 1'b0;
                a_col_cnt_clear = 1'b1;
                b_cnt_en = 1'b0;
                b_cnt_clear = 1'b1;
                r_cnt_en = 1'b0;
                r_cnt_clear = 1'b1;
            end
        endcase
    end
endmodule

// General-purpose simple dual-port BRAM
// With optional support for asymmetric read/write data width
module bram # (
    parameter integer WORD_WIDTH = 32,
    parameter integer W_WORD_WIDTH_WORDS = 1,
    parameter integer R_WORD_WIDTH_WORDS = 1,
    parameter integer MEM_SIZE_WORDS = 128,
    
    // Calculated Parameters
    localparam integer W_ADDR_SIZE = MEM_SIZE_WORDS / W_WORD_WIDTH_WORDS,
    localparam integer W_ADDR_BITS = $clog2(W_ADDR_SIZE),
    localparam integer W_DATA_BITS = WORD_WIDTH * W_WORD_WIDTH_WORDS,
    
    localparam integer R_ADDR_SIZE = MEM_SIZE_WORDS / R_WORD_WIDTH_WORDS,
    localparam integer R_ADDR_BITS = $clog2(R_ADDR_SIZE),
    localparam integer R_DATA_BITS = WORD_WIDTH * R_WORD_WIDTH_WORDS
)(
    // Clock and Reset
    input wire clk,
    // Write Interface
    input wire [W_ADDR_BITS - 1 : 0] w_addr,
    input wire [W_DATA_BITS - 1 : 0] w_data,
    input wire we,
    // Read Interface
    input wire [R_ADDR_BITS - 1 : 0] r_addr,
    output wire [R_DATA_BITS - 1 : 0] r_data,
    input wire re
);
    generate
        if (W_DATA_BITS == R_DATA_BITS) begin
            // Write data width == Read data width

            // Memory Instance
            reg [R_DATA_BITS - 1 : 0] mem_inst [R_ADDR_SIZE : 0];

            // Output Logic
            reg [R_DATA_BITS - 1 : 0] r_data_int;
            assign r_data = re ? r_data_int : 'b0;

            always @ (posedge(clk)) begin
                // Write Logic
                if (we) begin
                    mem_inst[w_addr] <= w_data;
                end

                // Read Logic
                r_data_int <= mem_inst[r_addr];
            end
        end else if (W_DATA_BITS > R_DATA_BITS) begin
            // Write data width > Read data width

            // Memory Instance
            reg [R_DATA_BITS - 1 : 0] mem_inst [R_ADDR_SIZE : 0];
            
            // Output Logic
            reg [R_DATA_BITS - 1 : 0] r_data_int;
            assign r_data = re ? r_data_int : 'b0;

            always @ (posedge(clk)) begin
                // Write Logic
                if (we) begin : larger_write
                    integer i;
                    for (i = 0; i < W_DATA_BITS / R_DATA_BITS; i = i + 1) begin
                        mem_inst[{w_addr, i[R_ADDR_BITS - W_ADDR_BITS - 1 : 0]}] <=
                            w_data[i * R_DATA_BITS +: R_DATA_BITS];
                    end
                end

                // Read Logic
                r_data_int <= mem_inst[r_addr];
            end
        end else if(W_ADDR_BITS < R_DATA_BITS) begin
            // Write data width < Read data width
            
            // Memory Instance
            reg [W_DATA_BITS - 1 : 0] mem_inst [W_ADDR_SIZE : 0];

            // Output Logic
            reg [R_DATA_BITS - 1 : 0] r_data_int;
            assign r_data = re ? r_data_int : 'b0;

            always @ (posedge(clk)) begin : larger_read
                integer i;
                
                // Write Logic
                if (we) begin
                    mem_inst[w_addr] <= w_data;
                end

                // Read Logic
                for (i = 0; i < R_DATA_BITS / W_DATA_BITS; i = i + 1) begin
                    r_data_int[i * W_DATA_BITS +: W_DATA_BITS] <=
                        mem_inst[{r_addr, i[W_ADDR_BITS - R_ADDR_BITS - 1 : 0]}];
                end
            end
        end
    endgenerate
    
endmodule

// Multiply-And-Accumulate Core
// Support for fixed point arithmatic
module alu_mac # (
    parameter integer WORD_WIDTH = 32,
    parameter integer FRAC_BITS = 0
)(
    // Clock and Reset
    input wire clk,
    input wire anrst,
    // Clear Signal
    input wire clear,
    // Data I/O
    input wire signed [WORD_WIDTH - 1 : 0] in_a,
    input wire signed [WORD_WIDTH - 1 : 0] in_b,
    output wire signed [WORD_WIDTH - 1 : 0] out
);
    reg signed [WORD_WIDTH - 1 : 0] reg_add;

    always @ (posedge (clk) or negedge(anrst)) begin
        if (!anrst) begin
            reg_add <= 'b0;
        end else begin
            if (clear) begin
                reg_add <= 'b0;
            end else begin
                reg_add <= out;
            end
        end
    end

    // Shift multiplication result by FRAC_BITS
    wire [WORD_WIDTH * 2 - 1 : 0] mul_result = in_a * in_b;
    assign out = reg_add + mul_result[FRAC_BITS +: WORD_WIDTH];
endmodule