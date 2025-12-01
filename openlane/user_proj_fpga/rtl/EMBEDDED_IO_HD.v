// EMBEDDED_IO_HD.v - I/O pad wrapper for Skywater 130nm
module EMBEDDED_IO_HD (
    input wire IO_ISOL_N,
    input wire SOC_IN,
    output wire SOC_OUT,
    output wire SOC_DIR,
    input wire FPGA_OUT,
    input wire FPGA_DIR,
    output wire FPGA_IN
);

// Simple bidirectional I/O logic
// When FPGA_DIR=1, output mode; when FPGA_DIR=0, input mode

assign SOC_OUT = FPGA_DIR ? FPGA_OUT : 1'bz;
assign FPGA_IN = FPGA_DIR ? 1'b0 : SOC_IN;
assign SOC_DIR = FPGA_DIR;

endmodule

