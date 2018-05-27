<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Todo-demo</title>
</head>
<body>
<form action="todo-demo.jsp" method="post">
    Add new Item: <input type="text" name="newItem"/>
    <input type="submit" value="Add new Item">
</form>
<hr>
<b>Todo List Items: </b>
<ol>
    <%
        /**
         * session objects are automatically passed by the client and the server
         * All we got to do is get the session id and downcast the object to List
         */
        List<String> itemList = (List<String>) session.getAttribute("mySessionObject");
        if (itemList == null) {
            itemList = new ArrayList<>();
            session.setAttribute("mySessionObject", itemList);
        }

        //see if there is form data to add
        String theItem = request.getParameter("newItem");
        if (theItem != null) {
            itemList.add(theItem);
        }

        //display the items from the list
        for (String temp : itemList) {
            out.println("<li>" + temp + "</li>");
        }


    %>
</ol>


</body>
</html>
