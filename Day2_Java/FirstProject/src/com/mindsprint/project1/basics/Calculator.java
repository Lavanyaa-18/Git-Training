package com.mindsprint.project1.basics;
import java.util.Scanner;
public class Calculator {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("enter 1st number:");
        double num1=sc.nextDouble();
        System.out.println("enter 2nd number:");
        double num2=sc.nextDouble();

        System.out.println("Enter + for addition\n - for subtraction\n" + "* for multiplication\n / for division" );
        String input=sc.next();

        double result = 0;
        switch (input) {
            case "+":
                result = num1 + num2;
                break;
            case "-":
                result = num1 - num2;
                break;
            case "*":
                result = num1 * num2;
                break;
            case "/":
                if (num2 != 0) {
                    result = num1 / num2;
                } else {
                    System.out.println("Error! Division by zero.");
                    return;
                }
                break;
            default:
                System.out.println("Invalid operator");
                return;
        }

        System.out.println("The result is: " + result);
    }
}


