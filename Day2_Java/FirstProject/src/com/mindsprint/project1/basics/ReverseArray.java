package com.mindsprint.project1.basics;

public class ReverseArray {

        public static void main(String[] args) {
            int[] array = {5, 2, 9, 1, 5, 6};


            System.out.println("Original array: ");
            for (int i = 0; i < array.length; i++) {
                System.out.print(array[i] + " ");
            }
            System.out.println();

            System.out.println("Array in reverse order: ");// in reverse order
            for (int i = array.length - 1; i >= 0; i--) {
                System.out.print(array[i] + " ");
            }
            System.out.println();
        }
    }






