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
    <c:forEach var="tempCity" items="${citiesList}">
        ${tempCity}<br/>
    </c:forEach>
</body>
</html>
