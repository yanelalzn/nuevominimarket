<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <title>Menu Minimarket</title>
    </head>
    <body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand"  href="ControladorEmp?accion=home1"><img src="img/mini1.png" style="height: 80px; width: 200px; background: white"/></a></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        
        <li class="nav-item">
            <a class="nav-link active" href="ControladorEmp?accion=ListarCliente">Cliente</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" href="ControladorEmp?accion=Producto"> Productos</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" href="ControladorEmp?accion=Empleado">Empleado</a>
        </li>
        
        <li class="nav-item">
            <a class="nav-link active" href="#">Config</a>
        </li>
        </ul>
        
        <%--
        <li class="nav-item">
          <a class="nav-link active" href="Controlador?accion=carrito" tabindex="-1" aria-disabled="true">
              <i class="fas fa-cart-plus">(<label style="color: #e65c00">${cont}</label>)</i>
              Carrito</a>
        </li>
        
       
       <form class="d-flex">
        <input class="form-control me-1" type="search" placeholder="Search" aria-label="Search">
        button class="btn btn-outline-light" type="submit">Buscar</button
       </form>--%>
        
        
        <div class="btn-group dropstart" style="margin-left: 870px;">
        <button  style="border: none;"class="btn btn-outline-light   dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
            <i class="fas fa-window-close"></i>
        </button>
        <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton">        
            <a class="dropdown-item" href="login.jsp">Salir</a>
        </div>     
        </div>
        
        <%--
        <div class="dropdown me-3"  style="left: 850px; ">
            <button style="border: none" class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
          ${empleado.getNombre()}
        </button>
        <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton">
          <a class="dropdown-item" href="#">${empleado.getUsuario()}</a>
          <a class="dropdown-item" href="#">${empleado.getApellidos()}</a>
          <a class="dropdown-item" href="login.jsp">Salir</a>
        </div>
      </div>            
          --%>    
       
    
  </div>
</nav>   
     
     <div class="container mt-4">
            <div class="row">                
                <c:forEach var="p" items="${producto1}" >
                    <div class="col-sm-3 " style="margin-bottom: 20px;">
                    <div class="card">
                        <div class="card-header">
                            <h4>${p.getNombre()}</h4>                            
                        </div>
                        <div class="card-body text-center">                            
                            <img src="${p.getImagen()}" width="200" height="180">  
                            
                        </div>
                        <div class="card-footer text-center">
                             <i>S/. ${p.getPrecio()}</i>
                             
                             <br>
                            <label>${p.getDescripcion()}</label>
                            
                        </div>                              
                    </div>
                </div>  
                
              </c:forEach>  
                    
            </div>
        </div>
         
 
    </body>
    <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

</html>