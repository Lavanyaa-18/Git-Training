package com.mindsprint.project1.basics;
import java.util.Scanner;
public class Ternary1 {
    public static void main(String[] args) {
        Scanner scanner=new Scanner(System.in);
        System.out.println("Selling price:");
        int selling=scanner.nextInt();
        System.out.println(" purchase price:");
        int purchase=scanner.nextInt();

        int profit=selling-purchase;
        int loss=purchase - selling;


        System.out.println();


    }
}
