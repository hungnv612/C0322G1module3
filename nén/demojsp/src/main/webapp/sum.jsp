<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 6/27/2022
  Time: 1:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
      // code java
      int n1 = Integer.parseInt(request.getParameter("n1"));
      int n2 = Integer.parseInt(request.getParameter("n2"));
      int sum = n1+n2;
      request.setAttribute("ketQua",sum);
      request.getRequestDispatcher("result.jsp").forward(request,response);
  %>
<%--<h1> Trang sum- kết quả: <%=sum%> </h1>--%>
</body>
</html>
