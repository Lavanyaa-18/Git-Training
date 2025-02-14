package com.mindsprint.project1.oops;

public class Student {
    int id;
    String name;
    String email;
    String address;

    public Student(int i, String nidhi, String us){}//default constructor

    public Student(String name, String email, String address) {
        this.id=(int)Math.round(Math.random()*10000);
        this.name = name;
        this.email = email;
        this.address = address;
    }

    // shortcut is to right click generate and then constructor and select all and ok
    public Student(int id, String name, String email, String address) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.address = address;

    }
    @Override
    public String toString()
    {
        return "student{" +
                "id=" +id+
                ", name+" +name+ '\''+
                "email=" +email+ '\'';
    }

    public static void main(String[] args) {
        Student s1=new Student(10000, "nidhi", "us");
        Student s2=new Student("Alex","alex@2123","India");
        Student s3=new Student(10000,"nidhi","us");
        System.out.println(s1);
        System.out.println(s2);
        System.out.println(s3);


    }
}

