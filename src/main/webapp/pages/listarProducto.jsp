<%-- 
    Document   : listarProducto
    Created on : 17 may 2022, 15:24:09
    Author     : labtw04
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos</title>
        <style type = "text/css">
            <%@ include file = "../resources/css/menuprod.css"%>
        </style>
        <style>
            <%@include file="../webjars/bootstrap/5.1.3/css/bootstrap.min.css"%>
        </style>
        <style>
            <%@ include file = "/webjars/fontawesome/4.7.0/css/font-awesome.css"%>
        </style>
    </head>
    <body style="background: azure">
        <!-- Menu Producto -->
        <div class="contenido">
            <div class="topnav" id="myTopnav">
                <a href="pages/index.html" class="active">Home</a>
                <a href="ProductoServletController?action=crearForm">Crear</a>
                <a href="ProductoServletController?action=listar">Listar </a>
                <a href="ProductoServletController?action=listar">Eliminar </a>
                <a href="#contact">Acerca de </a>
                <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                    <i class="fa fa-bars"></i>
                </a>
            </div>
        </div> <br>
        <!-- Fin Menu Producto -->


        <!-- Inicio body seccion de Product details -->
        <div class="col-md-12">
            <div id="alertTarget">
            </div>
        </div>
        <section class="content">
            <%--  Targetas producto --%>
            <table border="1" width="100%"  class="table">
                <c:forEach var="producto" items="${ListaProductos}">
                    <div id="container">
                        <!-- Start Product details -->
                        <div class="product-details"> 
                            <h1>Alebrijes</h1>
                            <span class="hint-star star">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                            </span>
                        </div>
                        <!-- Fin Start Product details -->
                        <!--  Inicio product image  -->
                        <div class="product-image">
                            <img src="https://i.pinimg.com/474x/23/9e/4f/239e4f48bf732ee1ba022c45b5d06418.jpg" alt="Omar Dsoky">
                            <div class="info">
                                <h2>Producto</h2>
                                <ul>
                                    <li><c:out value="${producto.nombre}"/></li>
                                    <li><c:out value="${producto.descripcion}"/></li>
                                    <li><c:out value="${producto.precio}"/></li>
                                    <a href="ProductoServletController?action=delete&codigo=<c:out value="${producto.codigo}"/>" onclick="return confirm('Estás seguro que deseas eliminar el registro?')"  >Eliminar</a>
                                    <a href="ProductoServletController?action=actualizaForm&codigo=<c:out value="${producto.codigo}"/>" onclick="return confirm('Estás seguro que deseas actualizar el registro?')">Editar</a>
                                </ul>
                            </div>
                        </div>
                        <!--  End product image  -->
                    </div>
                </c:forEach>
            </table>
            <%--  Fin Targetas producto --%>
        </section>

        <!-- Pie de pagina -->
        <footer class="bg-dark text-white text-center text-lg-start">
            <!-- Grid container -->
            <div class="container p-4">
                <div class="row">
                    <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
                        <h5 class="text-uppercase">AlebrijesShop</h5>

                        <p>
                            "Hecho a mano hechos con el corazón"
                        </p>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                        <h5 class="text-uppercase">Redes sociales</h5>

                        <ul class="list-unstyled mb-0">

                            <a href="#"> <img src="resources/img/instagram.png"><i class="text-white">AlexRam</i></a><br><br>
                            <a href="#"> <img src="resources/img/facebook.png"><i class="text-white">Alexi Ramirez</i></a><br><br>
                            <a href="#"> <img src="resources/img/whatsapp.png"><i class="text-white">2548759658</i></a><br>

                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                        <h5 class="text-uppercase mb-0">Contactos</h5>

                        <ul class="list-unstyled">
                            <li>
                                <a href="#!" class="text-white">01234567895</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">5687945684</a>
                            </li>
                        </ul>
                    </div>
                    <!--Grid column-->
                </div>
                <!--Grid row-->
            </div>

            <!-- Copyright -->
            <div class="text-center p-3" style="background-color: rgba(255, 63, 162, 1);">
                © 2022 Copyright:
                <a class="text-white" href="#">Artesanías .com</a>
            </div>
            <!-- Copyright -->
        </footer>
        <!-- Fin de Pie de pagina -->
        
         <script>
            function myFunction() {
                var x = document.getElementById("myTopnav");
                if (x.className === "topnav") {
                    x.className += " responsive";
                } else {
                    x.className = "topnav";
                }
            }
        </script>
    </body>
</html>
