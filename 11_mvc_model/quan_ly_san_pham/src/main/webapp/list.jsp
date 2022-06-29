<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 29/06/2022
  Time: 2:25 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<h1>product</h1>
<form action="/product">
    <input type="text" name="nameSearch">
    <input type="submit" name="action" value="search">
</form>
<p>
    <a href="/product?action=create">Create new product</a>
</p>
<table class="table table-striped">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Price</td>
        <td>Describe</td>
        <td>Producer</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["product"]}' var="iteam">
        <tr>
            <td>${iteam.getId()} </td>
            <td>${iteam.getName()}</td>
            <td>${iteam.getPrice()}</td>
            <td>${iteam.getDescribe()}</td>
            <td>${iteam.getProducer()}</td>
            <td><a href="/product?action=edit&id=${iteam.getId()}">edit</a></td>
            <td><a href="/product?action=delete&id=${iteam.getId()}">delete</a></td>
        </tr>
    </c:forEach>

</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>
