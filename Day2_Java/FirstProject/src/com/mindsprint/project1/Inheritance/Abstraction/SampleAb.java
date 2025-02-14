package com.mindsprint.project1.Inheritance.Abstraction;
abstract class Test{
    public abstract void Display();
}
public class SampleAb extends Test {
    @Override
    public void Display()
    {
        System.out.println(("Implemented parent Method"));
    }

    public static void main(String[] args) {
        Test test=new SampleAb();
        test.Display();
    }
}
