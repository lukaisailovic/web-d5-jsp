<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>RAF Hakaton</title>
    <%@include file="header.jsp" %>


</head>
<body>
<%@include file="navbar.jsp" %>

<div class="container">
    <div style="height: 100vh;" >
        <div class="row" id="start">
            <div class="col justify-content-center text-center mt-5">
                <h1 class="mt-5">
                    DA LI MOŽEŠ DA OSVOJIŠ RAF?
                </h1>
                <h4 class="mt-2">
                    RAF Hakaton, 27. April
                </h4>
            </div>
        </div>
        <div class="row mt-4">
            <div class="col justify-content-center text-center">
                <a href="prijava.jsp" class="btn btn-outline-info btn-lg">Prijavi se</a>
            </div>
        </div>
    </div>


    <div class="row" style="margin-top: 15em" id="o-takmicenju">
        <div class="col">
            <div class="jumbotron">
                <h1 class="display-3">O takmicenju</h1>
                <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium aliquid asperiores dolor dolores enim facilis, hic incidunt molestias, numquam qui quo saepe sapiente tenetur veniam voluptatibus? Enim nisi numquam quas!</p>
                <hr class="my-4">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium, aperiam, eos? Ab atque beatae consequatur cumque doloribus in nam non odit officiis, optio praesentium qui quod saepe sunt unde voluptatem.</p>

            </div>
        </div>
    </div>

    <div class="row mt-5"  id="nagrade">
        <div class="col">
            <div class="jumbotron">
                <h1 class="display-3">Nagrade</h1>
                <div class="row mt-4">

                    <div class="col">
                        <div class="card text-white bg-secondary mb-3 text-center border-info" >
                            <div class="card-header">Drugo mesto</div>
                            <div class="card-body">
                                <img src="${pageContext.request.contextPath}/img/eth.svg" height="150px" width="150px "/>
                                <h4 class="card-title mt-3">50 000 din</h4>
                                <p class="card-text">U Ethereum kriptovaluti</p>
                            </div>
                        </div>
                    </div>

                    <div class="col">
                        <div class="card text-white bg-secondary mb-3 text-center border-warning" >
                            <div class="card-header">Prvo mesto</div>
                            <div class="card-body">
                                <img src="${pageContext.request.contextPath}/img/btc.svg" height="150px" width="150px "/>
                                <h4 class="card-title mt-3">100 000 din</h4>
                                <p class="card-text">U Bitcoin  kriptovaluti</p>
                            </div>
                        </div>
                    </div>

                    <div class="col">
                        <div class="card text-white bg-secondary mb-3 text-center border-primary" >
                            <div class="card-header">Trece mesto</div>
                            <div class="card-body">
                                <img src="${pageContext.request.contextPath}/img/eth.svg" height="150px" width="150px "/>
                                <h4 class="card-title mt-3">25 000 din</h4>
                                <p class="card-text">U Ethereum kriptovaluti</p>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>


    <div class="row mt-5"  id="partneri">
        <div class="col">
            <div class="jumbotron">
                <h1 class="display-3">Partneri</h1>

                <img src="${pageContext.request.contextPath}/img/raf.png" class="mt-4" />
            </div>
        </div>
    </div>

</div>

<div class="container-fluid bg-primary">
    <div class="container ">
        <div class="row ">
            <div class="col mt-5">
                <h4>
                    Mesto održavanja
                </h4>
                <p>
                    Računarski fakultet,
                    Knez Mihailova 6/VI
                </p>
            </div>
            <div class="col  mt-5">
                <h4>
                    Imate pitanja?
                </h4>
                <p>
                    hakaton@raf.rs
                </p>
            </div>
            <div class="col  mt-5">
                <h4>
                    Pozovite nas
                </h4>
                <p>
                    011 33 48 079
                </p>
            </div>
            <div class="col  mt-5">
                <img  class="img-fluid" src="${pageContext.request.contextPath}/img/hakaton_logo.png" />
            </div>
        </div>
    </div>
</div>

</body>
</html>