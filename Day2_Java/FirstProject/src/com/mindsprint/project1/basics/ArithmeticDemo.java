package com.mindsprint.project1.basics;
import java.util.Scanner;
public class ArithmeticDemo {
    public static void main(String[] args) {
        Scanner scanner= new Scanner(System.in);
        System.out.println("Enter first number:");
        int num1=scanner.nextInt();
        System.out.println("Enter second number:");
        int num2=scanner.nextInt();
        System.out.println("Addition:"+(num1+num2));
        System.out.println("subtraction:"+(num1-num2));
        System.out.println("multiplication:"+(num1*num2)); //num1+ "*" +num2+ "=" +(num1*num2))
        System.out.println("division:"+(num1/num2));
    }
}
