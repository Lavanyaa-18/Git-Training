package com.mindsprint.project1.basics;

public class TwoDArray {
    public static void main(String[] args) {
        int[][] array = {{1, 2, 3}, {4, 5, 6}};
        for (int i = 0; i < array.length; i++) {
            for (int j = 0; j < array[i].length; j++) {
                System.out.print(array[i][j] + "\t");
            }
            System.out.println();
        }
    }
}