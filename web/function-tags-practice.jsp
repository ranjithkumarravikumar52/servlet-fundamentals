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
Length of the String(HelloWorld) : ${fn:length(data)}<br/><br/><br/>
Upper case (HelloWorld): ${fn:toUpperCase(data)}<br/><br/><br/>
Lower case (HelloWorld): ${fn:toLowerCase(data)}<br/><br/><br/>
Ends with 'd' in (HelloWorld) ?: ${fn:endsWith(data, 'd')}<br/><br/><br/>

<!-- How to split a csv values -->
How to split a csv values (HINT: using fn:split which results in string[] using the delimiter ',')
<c:set var="citiesCSV" value="Hyderabad, Delhi, Boston, London"/>

<!-- using fn:split which results in string[] using the delimiter ','-->
<c:set var="citiesArray" value="${fn:split(citiesCSV, ',')}"/>

<br/>
<!-- print all the values in the citiesArray -->
Values in the cities array using fn:split are as follows: <br/>
<c:forEach var="citiesIndex" items="${citiesArray}">
    <c:out value="${citiesIndex}"/><br/>
</c:forEach>

<br/><br/>
How to concatenate an array of strings using a limiter? (HINT: fn:join())<br/><br/>
<c:set var="citiesWithDollarSign" value="${fn:join(citiesArray, '$')}"/>
<c:out value="${citiesWithDollarSign}"/>


</body>
</html>
