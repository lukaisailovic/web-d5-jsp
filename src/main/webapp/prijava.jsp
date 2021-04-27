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


            <%
                if (session.getAttribute("team_name") != null){
            %>
                <div class="alert alert-danger">
                    Vec ste prijavili tim <%=session.getAttribute("team_name")%>. Ne mozete napraviti vise od jedne prijave.
                </div>
            <%}%>
            <h4>
                Podaci o timu
            </h4>
            <form action="clanovi.jsp" method="get">

                <div class="form-group">
                    <input type="text" class="form-control" id="ime" name="ime" placeholder="Ime tima">
                </div>
                <div class="form-group">
                    <input type="email" class="form-control" id="email" name="email" placeholder="Kontakt email">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="tel" name="tel" placeholder="Kontakt telefon">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="moto" name="moto" placeholder="Moto tima">
                </div>
                <div class="form-group">
                    <select name="source" id="source" class="form-control">
                        <option value="" selected disabled>Kako ste culi za hakaton?</option>
                        <option value="facebook">Facebook</option>
                        <option value="instagram">Instagram</option>
                        <option value="youtube">YouTube</option>
                    </select>
                </div>
                <div class="form-group">
                    <select name="membercount" id="membercount" class="form-control">
                        <option value="" selected disabled>Broj clanova tima?</option>
                        <option value="3">3</option>
                        <option value="4">4</option>

                    </select>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-lg">Clanovi</button>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>
