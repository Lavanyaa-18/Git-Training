package com.mindsprint.project1.Inheritance;

public class MethodOverload
{

    public int add(int num1,int num2){
        return num1+num2;
    }
    public double add(double num1,double num2){
        return num1+num2;
    }

    public static void main(String[] args) {
            MethodOverload m=new MethodOverload();
        System.out.println(m.add(6,8));
        System.out.println(m.add(23.00f,87.90f));

    }
}
