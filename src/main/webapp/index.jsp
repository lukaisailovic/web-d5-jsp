<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <%@include file="header.jsp"%>

</head>
<body>
<%@include file="navbar.jsp"%>

<div class="container">
</h1>
    <h1><%= "Hello World!" %>
<br/>
<a href="hello-servlet">Hello Servlet</a>
</div>
</body>
</html>