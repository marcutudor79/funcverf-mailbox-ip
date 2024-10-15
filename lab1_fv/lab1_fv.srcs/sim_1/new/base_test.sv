`include "uvm_macros.svh"
`include "environment.sv"
import uvm_pkg::*;

class base_test extends uvm_test;
    // factory registration
    `uvm_component_utils (base_test)
    
    environment env;
    
    // constructor
    function new(string name="base_test", uvm_component parent=null);
        super.new(name, parent);
    endfunction
    
    virtual function void build_phase (uvm_phase phase);
        env = environment::type_id::create("env", this);
    endfunction
    
    virtual task run_phase(uvm_phase phase);  // Added missing semicolon
        virtual axi4Lite_intf axi4Lite;

        uvm_config_db#(virtual axi4Lite_intf)::get(null, "", "axi4Lite_interface", axi4Lite);
    
        phase.raise_objection(this);
        
        `uvm_info("base_test", "Waiting for 100 clk cycles...", UVM_NONE)
        repeat(100) @(posedge axi4Lite.s_axi_aclk);
        `uvm_info("base_test", "Waiting for 100 clk cycles... DONE", UVM_NONE)
        
        phase.drop_objection(this);
    endtask
endclass