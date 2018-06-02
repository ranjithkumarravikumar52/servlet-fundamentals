<%--
  Created by IntelliJ IDEA.
  User: Ranjith
  Date: 5/27/2018
  Time: 2:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cookies personalize</title>
</head>
<body>
    <%
        //Read the form data
        String favoriteLanguage = request.getParameter("favoriteProgrammingLanguage");

        //Create the cookie
        Cookie theCookie = new Cookie("myApp.favoriteLanguage", favoriteLanguage);

        //set the life span to one year
        theCookie.setMaxAge(24*60*60*365);

        //send cookie to browser
        response.addCookie(theCookie);
    %>

    Thanks! We set your favorite language to ${param.favoriteProgrammingLanguage}
    <br/><br/>
    <a href="cookies-homepage.jsp">Return to Homepage</a>
</body>
</html>
