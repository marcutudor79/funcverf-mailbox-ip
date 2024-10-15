`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 09:10:52 PM
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
import uvm_pkg::*;
`include "base_test.sv"

module testbench(

    );
    
 // ------ Signals declaration ------ //
// inputs
logic capturetrig0;
logic capturetrig1;
logic freeze;
logic s_axi_aclk;
logic s_axi_aresetn;

logic [4:0] s_axi_awaddr;
logic s_axi_awvalid;
logic [31:0] s_axi_wdata;
logic [3:0] s_axi_wstrb;
logic s_axi_wvalid;
logic s_axi_bready;
logic [4:0] s_axi_araddr;
logic s_axi_arvalid;
logic s_axi_rready;

// outputs
logic generateout0;
logic generateout1;
logic pwm0;
logic interrupt;
logic s_axi_awready;
logic s_axi_wready;
logic [1:0] s_axi_bresp;
logic s_axi_bvalid;
logic s_axi_arready;
logic [31:0] s_axi_rdata;
logic [1:0] s_axi_rresp;
logic s_axi_rvalid;


// ------- DUT instantiation ------- //
axi_timer_verilog dut_inst(.*);  

// ------- Interfaces instantiation ------- //
axi4Lite_intf axi4Lite();

// ------- Signals assignments ------- //
assign axi4Lite.s_axi_aclk      = s_axi_aclk;
assign axi4Lite.s_axi_awready   = s_axi_awready;
assign axi4Lite.s_axi_wready    = s_axi_wready;
assign axi4Lite.s_axi_bresp     = s_axi_bresp;
assign axi4Lite.s_axi_bvalid    = s_axi_bvalid;
assign axi4Lite.s_axi_arready   = s_axi_arready;
assign axi4Lite.s_axi_rdata     = s_axi_rdata;
assign axi4Lite.s_axi_rresp     = s_axi_rresp;
assign axi4Lite.s_axi_rvalid    = s_axi_rvalid;

assign s_axi_aresetn    = axi4Lite.s_axi_aresetn;
assign s_axi_awaddr     = axi4Lite.s_axi_awaddr;
assign s_axi_awvalid    = axi4Lite.s_axi_awvalid;
assign s_axi_wdata      = axi4Lite.s_axi_wdata;
assign s_axi_wstrb      = axi4Lite.s_axi_wstrb;
assign s_axi_wvalid     = axi4Lite.s_axi_wvalid;
assign s_axi_bready     = axi4Lite.s_axi_bready;
assign s_axi_araddr     = axi4Lite.s_axi_araddr;
assign s_axi_arvalid    = axi4Lite.s_axi_arvalid;
assign s_axi_rready     = axi4Lite.s_axi_rready;

// ------- Run a test ------- //
initial begin
    uvm_config_db#(virtual axi4Lite_intf)::set(null, "", "axi4Lite_interface", axi4Lite);
    
    run_test("base_test");
end

endmodule
