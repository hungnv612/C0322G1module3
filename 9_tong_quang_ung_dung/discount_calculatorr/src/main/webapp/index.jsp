<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/06/2022
  Time: 3:42 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <div class="product">
    <form action="/product" method="post">
      <input type="text" size="30" name="name" placeholder="Mô tả sản phẩm">
      <input type="text" size="30" name="price" placeholder="giá">
      <input type="text" size="30" name="discount" placeholder="Chiếc khấu">
      <input type="submit" name="calculate" value="Tính chiếc khấu" >
    </form>
  </div>
  </body>
</html>
