<%@ page import="java.util.List" %>
<%@ page import="models.Item" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 25.07.2023
  Time: 18:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body>
<%@include file ="navbar.jsp"%>
<table class="table table-striped">
    <thead>
        <th>ID</th>
        <th>NAME</th>
        <th>DESCRIPTION</th>
        <th>PRICE</th>
    </thead>
    <tbody>
    <%
        List<Item> items = (List<Item>) request.getAttribute("items");
        for (Item item : items) {
    %>
    <tr>
        <td><%=item.getId()%></td>
        <td><%=item.getName()%></td>
        <td><%=item.getDescription()%></td>
        <td><%=item.getPrice()%></td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>
</body>
</html>
