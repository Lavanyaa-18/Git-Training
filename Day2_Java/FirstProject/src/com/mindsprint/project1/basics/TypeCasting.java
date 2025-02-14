package com.mindsprint.project1.basics;

public class TypeCasting {
    public static void main(String[] args) {
        short data=10;
        float data1=data;
        System.out.println("Data1:"+data1); //implicit type casting

        double info=78.78;
        int info1=(int)info; // type casting explicit
        System.out.println("Info:"+info1);

        char a='A';
        System.out.println("ASCII NO: "+(int)a);
        System.out.println("ASCII NO: "+(char)((int)a+32));
    }
}
