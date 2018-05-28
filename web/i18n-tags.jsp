<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
    <head>
        <title>I18N</title>
        <%--<jsp:include page="char-encoding-UTF-8.jsp"/>--%>

        <%--First we set a variable, theLocale.  For the actual value we use the parameter being passed into the URL.
        If the parameter is not empty then we use that parameter, the Locale.
        Otherwise, we make use of the locale that's passed in via the pageContext.
        Finally, we set the scope of theLocale variable we just set up to session.--%>
        <%--https://stackoverflow.com/questions/5850336/what-does-this-expression-language-pagecontext-request-contextpath-exactly-do--%>
        <c:set var="theLocale"
               value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}"
               scope="session"/>

        <fmt:setLocale value="${theLocale}"/>

        <!-- base file name complete path -->
        <!-- JSP will append "locale" myLabels_<theLocale>.properties to the line below-->
        <%--We are telling java here where to find the resource bundle.--%>
        <fmt:setBundle basename="com.jsppractice.i18n.resources.mylabels"/>


    </head>
    <body>
        <ul>
            <!-- the question mark serves as a delimiter between the URL and the parameters.-->
            <li><a href="i18n-tags.jsp?theLocale=en_US">English(US)</a></li>
            <li><a href="i18n-tags.jsp?theLocale=de_DE">German(DE)</a></li>
            <li><a href="i18n-tags.jsp?theLocale=es_ES">Spanish(ES)</a></li>
            <li><a href="i18n-tags.jsp?theLocale=zh_CN">Chinese(CN)</a></li>
        </ul>

        <fmt:message key="label.greeting"/><br/><br/>
        <fmt:message key="label.firstname"/>: <i>John</i><br/>
        <fmt:message key="label.lastname"/>: <i>Doe</i><br/><br/>
        <fmt:message key="label.welcome"/><br/>

        <hr>
        Selected locale: ${theLocale}
    </body>
</html>
