package com.jsppractice.data;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.ListIterator;

public class StudentList {
    private List<Student> studentList;

    public StudentList() {
        this.studentList = new ArrayList<>();
    }

    public void addStudents(Student newStudent){
        this.studentList.add(newStudent);
    }

    public List<Student> getStudentList() {
        return studentList;
    }

    @Override
    public String toString() {
        StringBuffer sb = new StringBuffer();
        ListIterator<Student> iterator = studentList.listIterator();
        while(iterator.hasNext()){
            sb.append(iterator.next().getFirstName());
        }
        return sb.toString();
    }
}
