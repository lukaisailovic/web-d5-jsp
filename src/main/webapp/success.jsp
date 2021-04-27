<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>RAF Hakaton</title>
    <%@include file="header.jsp" %>

</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container">
    <div class="row justify-content-center ">
        <div class="col-md-6 text-center">
            <h2>
                <%= session.getAttribute("team_name") %>, hvala na prijavi!
            </h2>
            <h4>
                Nas tim pregleda prijavu i obavestice vas o konacnoj odluci na email <span class="text-primary"><%= session.getAttribute("team_email") %></span>
            </h4>
            <h4>
                Za sva dodatna pitanje mozete pisati na <span class="text-primary">hakaton@raf.rs</span>
            </h4>
        </div>
    </div>
</div>

</body>
</html>
