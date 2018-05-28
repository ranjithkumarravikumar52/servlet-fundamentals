<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Function Tags Practice</title>
</head>
<body>
    <!-- Trying out some basic JSTL function tags -->
    <c:set var="data" value="HelloWorld"/>
    Length of the String(HelloWorld) : ${fn:length(data)}<br/>
    Upper case (HelloWorld): ${fn:toUpperCase(data)}<br/>
    Lower case (HelloWorld): ${fn:toLowerCase(data)}<br/>
    Ends with 'd' in (HelloWorld) ?: ${fn:endsWith(data, 'd')}<br/>
</body>
</html>
