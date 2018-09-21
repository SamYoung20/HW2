// Adder circuit
// define gates with delays
`define AND and #50
`define OR or #50
`define NOT not #50
`define XOR xor #50

module behavioralFullAdder
(
    output sum, 
    output carryout,
    input a, 
    input b, 
    input carryin
);
    // Uses concatenation operator and built-in '+'
    assign {carryout, sum}=a+b+carryin;
endmodule

module structuralFullAdder
(
    output sum, 
    output carryout,
    input a, 
    input b, 
    input carryin,
    output xor1, and1, and2, or1
);
    // Your adder code here
    xor xorgate1(xor1, a, b);
    xor xorgate2(sum, xor1, carryin);
    and andgate1(and1, carryin, xor1);
    and andgate2(and2, a, b);
    or orgate(carryout, and1, and2);



endmodule
