<%@ page import="com.jsppractice.data.Student" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core_1_1" %>
<%--
  Created by IntelliJ IDEA.
  User: Ranjith
  Date: 5/27/2018
  Time: 7:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSTL tags practice</title>
</head>
<body>
    <%
        //create a sample data
        String[] cities = {"Mumbai", "Delhi", "Calcutta"};
        pageContext.setAttribute("citiesList", cities);
    %>
    For each implementation<br/><br/>
    <c:forEach var="tempCity" items="${citiesList}">
        ${tempCity}<br/>
    </c:forEach>

    <%
        //creating multiple objects of student class
        List<Student> studentList = new ArrayList<>();
        studentList.add(new Student("ranjith", "kumar", "hyd"));
        studentList.add(new Student("Jon", "Doe", "us"));
        studentList.add(new Student("Mary", "Jane", "hyd"));
        studentList.add(new Student("Wot", "Up", "boston"));
        pageContext.setAttribute("studentList", studentList);
    %>
    <table border="1">
        <tr>
            <th>
                FirstName
            </th><th>
                LastName
            </th>
            <th>
                City
            </th>
        </tr>
        <c:forEach var="studentVar" items="${studentList}">
        <tr>
            <td>${studentVar.firstName}</td>
            <td>${studentVar.lastName}</td>
            <td>${studentVar.city}</td>
        </tr>
        </c:forEach>
    </table>
    <br/><br/>
    
    <!-- practice if condition -->
    Display students from the city: Hyderabad<br/><br/>
    <c:forEach var="studentVar" items="${studentList}">
        <c:if test="${studentVar.city.contentEquals('hyd')}">
            ${studentVar.firstName},
            ${studentVar.lastName}
        </c:if>
        <br/>
    </c:forEach>

    <!-- practice choose condition -->
    <c:forEach var="studentVar" items="${studentList}">
        <c:choose>
            <c:when test="${studentVar.city.contentEquals('hyd')}">
                Students from Hyd:<br/>
                ${studentVar.firstName}, ${studentVar.lastName}<br/>
            </c:when>
            <c:when test="${studentVar.city.contentEquals('us')}">
                Students from us:<br/>
                ${studentVar.firstName}, ${studentVar.lastName}<br/>
            </c:when>
            <c:otherwise>
                Students from lololol
            </c:otherwise>
        </c:choose>
    </c:forEach>
</body>
</html>
