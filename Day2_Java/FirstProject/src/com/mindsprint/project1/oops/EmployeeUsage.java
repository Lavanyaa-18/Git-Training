package com.mindsprint.project1.oops;

public class EmployeeUsage {
    public static void main(String[] args) {

        EmployeeEncapsulation e1=new EmployeeEncapsulation(1,"xya",8977);
        System.out.println(e1);
        EmployeeEncapsulation e2=new EmployeeEncapsulation();
        e2.setId(1000);
        e2.setName("nidhi");
        e2.setSalary(67880);
        System.out.println("id:"+e2.getId() +"Name"+e2.getName()+ "salary"+e2.getSalary());
    }
}
