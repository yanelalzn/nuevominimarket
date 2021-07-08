
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <title>Listar Venta</title>
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
            <a class="nav-link active" href="ControladorEmp?accion=listaremp">Empleado</a>
        </li>
        
        <li class="nav-item">
            <a class="nav-link active" href="ControladorEmp?accion=listarventa">Venta</a>
        </li>
        
        <li class="nav-item">
            <a class="nav-link active" href="ControladorEmp?accion=Generarventa">GenerarVenta</a>
        </li>
        </ul>
    </div>
  <div class="btn-group dropstart" style="margin-left: 7px;">
        <button  style="border: none;"class="btn btn-outline-light   dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
            <i class="fas fa-window-close"></i>
        </button>
        <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton">        
            <a class="dropdown-item" href="login.jsp">Salir</a>
        </div>     
        </div>
        </nav>
        <div class="container mt-4">
            <div class="card">
               
                
                <div class="card-header">
                    <a class="btn btn-primary" href="empmenu.jsp">Volver</a>  
                    <h2 class="text-center">Ventas</h2>
                </div>
                
                
                <form class="form" action="ControladorEmp">
                    <input type="search" name="txtbuscar1" >
                    <input type="submit" name="accion" value="BuscarEmp" class="btn btn-danger">
                </form>
                
                
                    
                
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Cod_Compra</th>
                                <th>Estado</th>
                                <th>Fecha_Compra</th>
                                <th>Monto</th>
                                <th>Nombre</th>                                
                            </tr>
                        </thead>
                        <tbody>
                                                                      
                            <tr>
                        <c:forEach var="p" items="${venta}" >
                                <td>${p.getIdcompra()}</td>
                                <td>${p.getEstado()}</td>
                                <td>${p.getFecha()}</td>
                                <td>${p.getMonto()}</td>
                                <td>${p.getComprador()}</td>                              
                                                     
                        </c:forEach>     
                                <td>
                                    <a href="ControladorEmp?accion=Editar&id=" class="btn btn-primary">Editar</a>
                                    <a href="ControladorEmp?accion=Delete&id=" class="btn btn-primary">Eliminar</a>
                                    
                                </td>
                                
                           
                                
                            
                                
                </div>
                </div>
                
            </div>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

</html>
