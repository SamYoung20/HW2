// Adder testbench
`timescale 1 ns / 1 ps
`include "adder.v"

module testFullAdder();
    reg a, b, carryin;
    wire sum, carryout;
    wire xor1, and1, and2, or1;

    //behavioralFullAdder adder (sum, carryout, a, b, carryin);
    structuralFullAdder adder (sum, carryout, a, b, carryin, xor1, and1, and2, or1);

initial begin
    $dumpfile("adder.vcd");
    $dumpvars();
    $display("Carryin A B| Carryout sum | Expected C Expected S");
    a=0;b=0;carryin=0; #1000 
    $display("   %b  %b  %b |        %b   %b | Expected 0 Expected 0", carryin, a, b, carryout, sum);
    a=0;b=0;carryin=1; #1000 
    $display("   %b  %b  %b |        %b   %b | Expected 0 Expected 1", carryin, a, b, carryout, sum);
    a=0;b=1;carryin=0; #1000 
    $display("   %b  %b  %b |        %b   %b | Expected 0 Expected 1", carryin, a, b, carryout, sum);
    a=0;b=1;carryin=1; #1000 
    $display("   %b  %b  %b |        %b   %b | Expected 1 Expected 0", carryin, a, b, carryout, sum);
    a=1;b=0;carryin=0; #1000 
    $display("   %b  %b  %b |        %b   %b | Expected 0 Expected 1", carryin, a, b, carryout, sum);
    a=1;b=0;carryin=1; #1000 
    $display("   %b  %b  %b |        %b   %b | Expected 1 Expected 0", carryin, a, b, carryout, sum);
    a=1;b=1;carryin=0; #1000 
    $display("   %b  %b  %b |        %b   %b | Expected 1 Expected 0", carryin, a, b, carryout, sum);
    a=1;b=1;carryin=1; #1000 
    $display("   %b  %b  %b |        %b   %b | Expected 1 Expected 1", carryin, a, b, carryout, sum);
    $finish();
    end

endmodule




    
