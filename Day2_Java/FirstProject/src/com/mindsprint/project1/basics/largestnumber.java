package com.mindsprint.project1.basics;
import java.util.Scanner;
public class largestnumber {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the first number:");
        double num1 = sc.nextDouble();
        System.out.println("Enter the second number:");
        double num2 = sc.nextDouble();

        if (num1 > num2) {
            System.out.println("The largest number is: " + num1);
        } else if (num2 > num1) {
            System.out.println("The largest number is: " + num2);
        } else {
            System.out.println("Both numbers are equal.");
        }
    }
}


