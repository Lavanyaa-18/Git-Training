package com.mindsprint.project1.basics;

public class Array {
    public static void main(String[] args) {
        int[] array1 = new int[5];
        String[] names = {"test1", "test2"};

        System.out.println("access direct:" + names[0]);
        for (int i = 0; i < names.length; i++) {
            System.out.println(names[i]);
            System.out.println("using for each loop");
            for (String name : names)
                System.out.println(name);


        }
    }
}
