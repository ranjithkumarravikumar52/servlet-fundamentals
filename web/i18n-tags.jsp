<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>I18N</title>
    </head>
    <body>
        <ul>
            <li><a href="i18n-tags.jsp?theLocale=en_US">English(US)</a></li>
            <li><a href="i18n-tags.jsp?theLocale=de_DE">German(DE)</a></li>
            <li><a href="i18n-tags.jsp?theLocale=es_ES">Spanish(ES)</a></li>
            <li><a href="i18n-tags.jsp?theLocale=zh_CN">Chinese(CN)</a></li>
        </ul>

        <fmt:message key="label.greeting"/><br/><br/>
        <fmt:message key="label.firstname"/>: <i>John</i><br/>
        <fmt:message key="label.lastname"/>: <i>Doe</i><br/><br/>
        <fmt:message key="label.welcome"/><br/>
    </body>
</html>
