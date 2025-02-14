package com.mindsprint.project1.Inheritance;
class ParentPhone{
    public void call(){
        System.out.println("parent calling");
    }
}
class ChildPhone extends ParentPhone{
    public void call(){
        super.call();// super used call from child to parent where as this keyword is used to call in the same class
        System.out.println("child calling");
    }

}
public class MethodOverriding {
    public static void main(String[] args) {
        ChildPhone alex = new ChildPhone();
        alex.call();

    }
}
