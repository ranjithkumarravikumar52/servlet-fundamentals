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
            //create a collection to add newItems into it
            List<String> itemList = new ArrayList<>();

            //add item into the list
            itemList.add(request.getParameter("newItem"));

            //print everything
            for(String itemIndex: itemList){
                out.println("<li>"+itemIndex+"</li>");
            }

        %>
    </ol>


</body>
</html>
