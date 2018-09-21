// Multiplexer circuit
`define AND and #50
`define OR or #50
`define NOT not #50
`define XOR xor #50

module behavioralMultiplexer
(
    output out,
    input address0, address1,
    input in0, in1, in2, in3
);
    // Join single-bit inputs into a bus, use address as index
    wire[3:0] inputs = {in3, in2, in1, in0};
    wire[1:0] address = {address1, address0};
    assign out = inputs[address];
endmodule


module structuralMultiplexer
(
    output out, naddress0, naddress1, nA0andnA1, A0andnA1, nA0andA1, A0andA1, x0, x1, x2, x3,
    input address0, address1,
    input in0, in1, in2, in3
);
    wire naddress0; 
    wire naddress1;

    not Ad0inv(naddress0, address0); //inverted named Ad0inv, takes address00 and produces signal naddress0
    not Ad1inv(naddress1, address1); //inverted named Ad0inv, takes address00 and produces signal naddress0
    and andgate0(nA0andnA1, naddress0, naddress1, in0); 	// AND gate produces nA0andnA1 from naddress0 and naddress1
    and andgate1(A0andnA1, address0, naddress1, in1); 	// AND gate produces A0andnA1 from address0 and naddress1
    and andgate2(nA0andA1, naddress0, address1, in2); 	// AND gate produces nA0andA1 from naddress0 and address1
    and andgate3(A0andA1, address0, address1, in3); 	        // AND gate produces A0andA1 from address0 and address1
    or  orgate(out, nA0andnA1, A0andnA1, nA0andA1, A0andA1);    // OUT gate produces out from x0, x1, x2, x3
	

endmodule




