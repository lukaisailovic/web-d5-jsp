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
            <h4 class="mb-5 mt-3">
                Podaci o clanovima tima
            </h4>

            <form action="team-submit" method="post">
                <input type="hidden" name="ime" value="<%= request.getParameter("ime") %>">
                <input type="hidden" name="email" value="<%= request.getParameter("email") %>">
                <input type="hidden" name="tel" value="<%= request.getParameter("tel") %>">
                <input type="hidden" name="moto" value="<%= request.getParameter("moto") %>">
                <input type="hidden" name="source" value="<%= request.getParameter("source") %>">
                <input type="hidden" name="membercount" value="<%= request.getParameter("membercount") %>">
                <%
                    Integer count = Integer.valueOf(request.getParameter("membercount"));
                    for (int i = 0; i < count; i++){
                %>
                <h4>
                    Haker <%= i+1 %>
                </h4>
                <div class="form-group">
                    <input type="text" class="form-control"  name="clanovi_ime" placeholder="Ime">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control"  name="clanovi_prezime" placeholder="Prezime">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control"  name="clanovi_email" placeholder="Email">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control"  name="clanovi_brucesca" placeholder="Broj ucesca na hakatonima">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control"  name="clanovi_uloga" placeholder="Uloga u timu">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control"  name="clanovi_ln" placeholder="Link ka LinkedIn profilu">
                </div>
                <%}%>

                <div class="form-group mt-3 mb-5">
                    <button type="submit" class="btn btn-primary btn-lg">Posalji prijavu</button>
                </div>

            </form>
        </div>
    </div>
</div>

</body>
</html>
