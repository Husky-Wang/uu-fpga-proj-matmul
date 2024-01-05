`timescale 1ns / 1ps

// Pile of stinking poo
module addr_gen # (

)(

);

endmodule

// General-purpose simple dual-port BRAM
// With support for asymmetric read/write data width
module bram # (
    parameter integer WORD_WIDTH = 16,
    parameter integer W_DATA_WIDTH_WORDS = 4,
    parameter integer R_DATA_WIDTH_WORDS = 8,
    parameter integer MEM_SIZE_WORDS = 1024,
    
    // Calculated Parameters
    localparam integer W_ADDR_SIZE = MEM_SIZE_WORDS / W_DATA_WIDTH_WORDS,
    localparam integer W_ADDR_BITS = $clog2(W_ADDR_SIZE),
    localparam integer W_DATA_BITS = WORD_WIDTH * W_DATA_WIDTH_WORDS,
    
    localparam integer R_ADDR_SIZE = MEM_SIZE_WORDS / R_DATA_WIDTH_WORDS,
    localparam integer R_ADDR_BITS = $clog2(R_ADDR_SIZE),
    localparam integer R_DATA_BITS = WORD_WIDTH * R_DATA_WIDTH_WORDS
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

// Pipelined MAC Module
// With support for multiple MAC instances
module alu_mac # (
    parameter integer DATA_WIDTH = 16,
    parameter integer MAC_INST = 8,
    parameter integer PIPELINE_STAGES = 10
)(
    // Clock and Reset
    input wire clk,
    input wire anrst,
    // Clear Signal
    input wire clear,
    // Data I/O
    input wire [DATA_WIDTH * MAC_INST - 1 : 0] in_a,
    input wire [DATA_WIDTH * MAC_INST - 1 : 0] in_b,
    output wire [DATA_WIDTH - 1 : 0] out
);
    reg signed [2 * DATA_WIDTH * MAC_INST - 1 : 0] mac_inst_result;
    reg signed [DATA_WIDTH - 1 : 0] mac_result [PIPELINE_STAGES : 0];

    always @ (posedge(clk) or negedge(anrst)) begin : mac_instances
        integer i;
        
        if (!anrst) begin
            mac_inst_result <= 'b0;
        end else begin
            if (clear) begin
                mac_inst_result <= 'b0;
            end else begin
                for (i = 0; i < MAC_INST; i = i + 1) begin
                    mac_inst_result[i * 2 * DATA_WIDTH +: 2 * DATA_WIDTH] <=
                        in_a[i * DATA_WIDTH +: DATA_WIDTH] *
                        in_b[i * DATA_WIDTH +: DATA_WIDTH] +
                        mac_inst_result[i * 2 * DATA_WIDTH +: 2 * DATA_WIDTH];
                end
            end
        end
    end

    always @ * begin : mac_aggregator
        integer i;

        mac_result[0] = 'b0;
        for (i = 0; i < MAC_INST; i = i + 1) begin
            mac_result[0] =
                mac_result[0] +
                mac_inst_result[i * 2 * DATA_WIDTH +: 2 * DATA_WIDTH];
        end
    end

    always @ (posedge(clk) or negedge(anrst)) begin : mac_pipeline
        integer i;

        if (!anrst) begin
            for (i = 1; i <= PIPELINE_STAGES; i = i + 1) begin
                mac_result[i] <= 'b0;
            end
        end else begin
            for (i = 1; i <= PIPELINE_STAGES; i = i + 1) begin
                mac_result[i] <= mac_result[i - 1];
            end
        end
    end

    assign out = mac_result[PIPELINE_STAGES];

endmodule
