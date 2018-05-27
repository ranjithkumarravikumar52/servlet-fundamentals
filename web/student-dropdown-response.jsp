<%--
  Created by IntelliJ IDEA.
  User: Ranjith
  Date: 5/27/2018
  Time: 10:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Response</title>
</head>
<body>
    Student confirmed:
    <br/><br/>
    <%= request.getParameter("firstName") %>
    <br/><br/>
    <%= request.getParameter("lastName")%>
    <br/><br/>
    Alternate way to confirm student
    <br/><br/>
    ${param.firstName}
    <br/><br/>
    ${param.lastName}
    <br/><br/>
    The student's country: ${param.country}
</body>
</html>
