<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<p align="center">
    Last updated: <%= new java.util.Date()%>
    <c:set var="stuff" value="<%= new java.util.Date()%>" />
    Time on the server (Using JSTL) -  ${stuff}
</p>