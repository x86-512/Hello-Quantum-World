namespace HelloWorld_qs {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    
    operation randomBit() : Result {
        use q = Qubit(); //I am getting bad memories from my time programming in C
        H(q);
        let returnable = M(q);
        Reset(q); //Causes an error if not 0, remember to free this like it is heap memory
        return returnable;
    }

    @EntryPoint()
    operation main() : Unit {//Unit is the equivilent of void
        Message("Hello from Q#");
        Message("It sucks that I can't run this from python or C# yet");
        Message("\nThis is a newline");
        Message("This is a \\");
        Message("This is a \"");
        Message("This is a '");
        Message("This is a \ttab");
        let rando = randomBit();
        Message($"This is a random bit: {rando}");
    }
}

