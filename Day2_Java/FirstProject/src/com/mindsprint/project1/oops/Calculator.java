package com.mindsprint.project1.oops;

public class Calculator {
    public int add(int num1, int num2) {
        return num1 + num2;
    }
        public int subtract(int num1, int num2){
            return num1 - num2;
        }
            public int multiply(int num1, int num2) {
                return num1 * num2;
            }
                public int division(int num1, int num2) {
                    return num1 / num2;
                }
                public int square(int num) {
                    return num * num;
                }
                public int cube(int num) {
                return num * num*num; // nothing will work after return
    }

               public static void main(String[] args)
               {
                   Calculator c=new Calculator();
                   System.out.println("Addition:" + c.add(45,23));
                   int result=c.cube(3);
                   System.out.println("Cube of 3 is "+result);


               }

    }

