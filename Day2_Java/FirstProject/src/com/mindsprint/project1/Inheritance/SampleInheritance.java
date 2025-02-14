package com.mindsprint.project1.Inheritance;
class Parent {

    public String name = "Test";

    public void Parent() {
        System.out.println("Hello from parent");
    }
        public void hello () {
            System.out.println("Hello from parent");
        }
    }

    class Child extends Parent {
        public Child() {
            super();
            System.out.println("Child constructor");
        }


        public void print() {
            System.out.println("welcome" + name);
        }
    }

    public class SampleInheritance {
        public static void main(String[] args) {
            Child child = new Child();
            child.print();
            child.hello();
            System.out.println(child.name);
        }
    }
