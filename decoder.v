// Decoder circuit
`define AND and #50
`define OR or #50
`define NOT not #50
`define XOR xor #50

module behavioralDecoder
(
    output out0, out1, out2, out3,
    input address0, address1,
    input enable
);
    // Uses concatenation and shift operators
    assign {out3,out2,out1,out0}=enable<<{address1,address0};
endmodule


module structuralDecoder
(
    output out0, out1, out2, out3,
    input addr0, addr1,
    input enable,
    output naddress0, naddress1
);
    wire naddress0; 
    wire naddress1;
    not Ad0inv(naddress0, addr0); //inverted named Ad0inv, takes address00 and produces signal naddress0
    not Ad1inv(naddress1, addr1); //inverted named Ad0inv, takes address00 and produces signal naddress0
    and andgate0(out0, naddress0, naddress1, enable); 	// AND gate produces out0 from naddress0 and naddress1
    and andgate1(out1, addr0, naddress1, enable); 	// AND gate produces out1 from address0 and naddress1
    and andgate2(out2, naddress0, addr1, enable); 	// AND gate produces out2 from naddress0 and address1
    and andgate3(out3, addr0, addr1, enable); 	        // AND gate produces out3 from address0 and address1



// Your decoder code here
endmodule

