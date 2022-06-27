<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 6/27/2022
  Time: 10:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h1>Trang home</h1>
  <a href="/hello"> vào get</a>
  <form action="/sum" method="post">
    <input type="text" name="n1" placeholder="nhập giá trị thứ nhất">
    <input type="text" name="n2" placeholder="nhập giá trị thứ 2">
    <button type="submit">Gửi</button>
  </form>
  <h1> Kết quả là : ${ketQua}</h1>
  </body>
</html>
