<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 28/06/2022
  Time: 10:22 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>$Title$</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div>
<table class="table">
<tr>
    <th>NAME</th>
    <th>DATE</th>
    <th>ADDRESS</th>
    <th>image</th>
</tr>
<c:forEach items="${customersList}" var="customers">
    <tr>
        <td> ${customers.name}</td>
        <td> ${customers.date}</td>
        <td> ${customers.address}</td>
        <td><img style="width: 100px ; height: 100px" src="${customers.image}"></td>
    </tr>
</c:forEach>
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>
