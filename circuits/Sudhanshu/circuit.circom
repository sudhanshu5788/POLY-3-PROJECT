pragma circom 2.0.0;

/*This circuit template checks that c is the multiplication of a and b.*/  

template Sudhanshu () {  
    signal input a;
    signal input b;

    signal x;
    signal output y;

    component nandGate  = NAND();
    component notGate = NOT();

    nandGate.a <== a;
    nandGate.b <==b;
    x <== nandGate.out;

    notGate.in <== x;
    y <== notGate.out;

    
}

template NOT() {
    signal input in;
    signal output out;

    out <== 1 + in - 2*in;
}

template NAND() {
    signal input a;
    signal input b;
    signal output out;

    out <== 1 - a*b;
}

component main = Sudhanshu();