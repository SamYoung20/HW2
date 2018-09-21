// Multiplexer testbench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

module testMultiplexer ();
    reg address0, address1;
    reg in0, in1, in2, in3;
    wire out, naddress0, naddress1, nA0andnA1, A0andnA1, nA0andA1, A0andA1, x0, x1, x2, x3;
   

    //behavioralMultiplexer Multiplex (out, address0, address1, in0, in1, in2, in3);
    structuralMultiplexer dut(out, naddress0, naddress1, nA0andnA1, A0andnA1, nA0andA1, A0andA1, x0, x1, x2, x3, address0, address1, in0, in1, in2, in3);
initial begin
    $dumpfile("multiplexer.vcd");
    $dumpvars();
    $display("in0 in1 in2 in3 | add0 add1| out | Expected Output");
    in0=0; in1=0; in2=0; in3=0; address0=0;address1 =0; #1000 
    $display(" %b   %b   %b   %b  |  %b  	%b  |  %b |  False", in0, in1, in2, in3, address0, address1, out);
    in0=1; in1=0; in2=0; in3=0; address0=0;address1 =0; #1000 
    $display(" %b   %b   %b   %b  |  %b  	%b  |  %b |  True", in0, in1, in2, in3, address0, address1, out);	
    in0=0; in1=1; in2=0; in3=0; address0=0;address1 =0; #1000 
    $display(" %b   %b   %b   %b  |  %b  	%b  |  %b |  False", in0, in1, in2, in3, address0, address1, out);	
    in0=0; in1=0; in2=1; in3=0; address0=0;address1 =0; #1000 
    $display(" %b   %b   %b   %b  |  %b  	%b  |  %b |  False", in0, in1, in2, in3, address0, address1, out);	
    in0=0; in1=0; in2=0; in3=1; address0=0;address1 =0; #1000 
    $display(" %b   %b   %b   %b  |  %b  	%b  |  %b |  False", in0, in1, in2, in3, address0, address1, out);	
   
    in0=1; in1=0; in2=0; in3=0; address0=1;address1 =0; #1000 
    $display(" %b   %b   %b   %b  |  %b  	%b  |  %b |  False", in0, in1, in2, in3, address0, address1, out);	
    in0=0; in1=1; in2=0; in3=0; address0=1;address1 =0; #1000 
    $display(" %b   %b   %b   %b  |  %b  	%b  |  %b |  True", in0, in1, in2, in3, address0, address1, out);	
    in0=0; in1=0; in2=1; in3=0; address0=1;address1 =0; #1000 
    $display(" %b   %b   %b   %b  |  %b  	%b  |  %b |  False", in0, in1, in2, in3, address0, address1, out);	
    in0=0; in1=0; in2=0; in3=1; address0=1;address1 =0; #1000 
    $display(" %b   %b   %b   %b  |  %b  	%b  |  %b |  False", in0, in1, in2, in3, address0, address1, out);	

    in0=1; in1=0; in2=0; in3=0; address0=0;address1 =1; #1000 
    $display(" %b   %b   %b   %b  |  %b  	%b  |  %b |  False", in0, in1, in2, in3, address0, address1, out);	
    in0=0; in1=1; in2=0; in3=0; address0=0;address1 =1; #1000 
    $display(" %b   %b   %b   %b  |  %b  	%b  |  %b |  False", in0, in1, in2, in3, address0, address1, out);	
    in0=0; in1=0; in2=1; in3=0; address0=0;address1 =1; #1000 
    $display(" %b   %b   %b   %b  |  %b  	%b  |  %b |  True", in0, in1, in2, in3, address0, address1, out);	
    in0=0; in1=0; in2=0; in3=1; address0=0;address1 =1; #1000 
    $display(" %b   %b   %b   %b  |  %b  	%b  |  %b |  False", in0, in1, in2, in3, address0, address1, out);	

    in0=1; in1=0; in2=0; in3=0; address0=1;address1 =1; #1000 
    $display(" %b   %b   %b   %b  |  %b  	%b  |  %b |  False", in0, in1, in2, in3, address0, address1, out);	
    in0=0; in1=1; in2=0; in3=0; address0=1;address1 =1; #1000 
    $display(" %b   %b   %b   %b  |  %b  	%b  |  %b |  False", in0, in1, in2, in3, address0, address1, out);	
    in0=0; in1=0; in2=1; in3=0; address0=1;address1 =1; #1000 
    $display(" %b   %b   %b   %b  |  %b  	%b  |  %b |  False", in0, in1, in2, in3, address0, address1, out);	
    in0=0; in1=0; in2=0; in3=1; address0=1;address1 =1; #1000 
    $display(" %b   %b   %b   %b  |  %b  	%b  |  %b |  True", in0, in1, in2, in3, address0, address1, out);	

    $finish();
    end

endmodule


