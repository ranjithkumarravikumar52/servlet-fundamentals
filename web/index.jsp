<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>$Title$</title>
    </head>
    <body>
        <h3>Reading form values</h3>
        <form action="/helloworld" method="get">
            FirstName: <input type="text" name="firstName"/>
            LastName: <input type="text" name="lastName"/>
            <input type="submit" value="submit"/>
        </form>
        <h3>Reading servlet parameter</h3>
        <form action="/ReadServletParam" method="get">
            <input type="submit" value="Read Servlet Param"/>
        </form>
    </body>
</html>
