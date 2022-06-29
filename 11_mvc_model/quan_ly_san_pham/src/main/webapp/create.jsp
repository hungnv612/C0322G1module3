<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 29/06/2022
  Time: 2:40 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create new product</title>
  <style>
    .message{
      color:green;
    }
  </style>
</head>
<body>
<h1>Create new product</h1>
<p>
  <c:if test='${requestScope["message"] != null}'>
    <span class="message">${requestScope["message"]}</span>
  </c:if>
</p>
<p>
  <a href="/products">Back to customer list</a>
</p>
<form method="post">
  <fieldset>
    <legend>product information</legend>
    <table>
      <tr>
        <td>Name: </td>
        <td><input type="text" name="name" id="name"></td>
      </tr>
      <tr>
        <td>price: </td>
        <td><input type="text" name="price" id="price"></td>
      </tr>
      <tr>
        <td>describe: </td>
        <td><input type="text" name="describe" id="describe"></td>
      </tr>
      <tr>
        <td>producer: </td>
        <td><input type="text" name="producer" id="producer"></td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" value="Create customer"></td>
      </tr>
    </table>
  </fieldset>
</form>
</body>
</html></html>
