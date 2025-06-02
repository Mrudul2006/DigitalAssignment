module xor_gate(output Y, input A, B);
    assign Y = A ^ B;
endmodule

module and_gate(output Y, input A, B);
    assign Y = A & B;
endmodule

module or_gate(output Y, input A, B);
    assign Y = A | B;
endmodule

module full_adder_structural(
    input A, B, Cin,
    output Sum, Cout
);
    wire xor1, xor2, and1, and2, and3, or1;

    xor_gate g1(xor1, A, B);
    xor_gate g2(Sum, xor1, Cin);

    and_gate a1(and1, A, B);
    and_gate a2(and2, B, Cin);
    and_gate a3(and3, A, Cin);

    or_gate o1(or1, and1, and2);
    or_gate o2(Cout, or1, and3);

endmodule
