<%--
  Created by IntelliJ IDEA.
  User: Ranjith
  Date: 5/27/2018
  Time: 3:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cookies-homepage</title>
</head>
<body>
    <%
        //default language
        String language = "Java";

        //get the cookies
        Cookie[] cookieList = request.getCookies();

        //if cookieList is not null
        if(cookieList != null){
            for(Cookie cookieIndex: cookieList){
                if("myApp.favoriteLanguage".equals(cookieIndex.getName())){
                    language = cookieIndex.getValue();
                    break;
                }
            }
        }
    %>

    Your favorite programming language : <%= language%>
    <ul>
        <li>Blah blah blah</li>
        <li>Blah blah blah</li>
        <li>Blah blah blah</li>
        <li>Blah blah blah</li>
    </ul>
    <a href="cookies-personalize-form.html">Personalize my homepage</a>
</body>
</html>
