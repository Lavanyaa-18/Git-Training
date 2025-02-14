package com.mindsprint.project1.basics;
import java.util.Scanner;
public class IfElse {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("enter any number");
        int num= sc.nextInt();
        if (num>0)
            System.out.println("Positive");
        else if (num==0)
            System.out.println(("zero"));
        else
            System.out.println("negative");
    }
}
