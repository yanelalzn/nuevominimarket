
<%@page import="Servicios.CategoriaServicios"%>
<%@page import="webservices.CategoriaRest"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
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
            <div class="d-flex">
                <h2>Productos</h2> 
                <a class="btn btn-primary" style="margin-left: 950px; border: none" href="empmenu.jsp">Volver</a>                   
            </div>                    
            <div class="row">             
                <div class="col-lg-9">                 
                    <table class="table table-responsive">
                        <thead class="table-primary">
                            <tr class="text-center">                                                           
                                <th>Nombre</th>
                                <th>Imagen</th>
                                <th>Descripcion</th>
                                <th>Precio</th>
                                <th>Cantidad</th>                      
                                <th>Eliminar</th>                    
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="p" items="${producto2}" >
                                 <tr class="text-center tr">
                                                                      
                                    <td>${p.getNombre()} </td>                                    
                                    
                                    <td><img src="${p.getImagen()}" width="90" height="110"></td>
                                    <td>${p.getDescripcion()}</td>
                                    <td>S/.${p.getPrecio()}</td>
                                    <td>${p.getStock()}</td>
                                    <td class="text-center">                                         
                                        <input type="hidden" id="idp1" value="${c.getIdProduct()}">
                                        <a  href="Controlador?accion=Delete&idp=${c.getItem()}" id="btnDelete"><i class="fas fa-trash-alt"></i></a>
                                                                                
                                    </td>                                

                                </tr>
                            </c:forEach>
                       </tbody>
                    </table>                    
                </div>
                <div class="col-lg-3">                  
                    <div class="card">
                        <div class="card-header">
                            Registrar Producto
                        </div>
                        <div class="card-body">
                            <label>Nombre</label>
                            <input type="text"  name="txtnombre" class="form-control text-center">
                            <label>Imagen</label>
                            <input type="text"  name="txtimg" class="form-control text-center">
                            <label>Descripcion</label>
                            <input type="text" name="txtdesp" class="form-control text-center">
                            <label>Precio</label>
                            <input type="text" name="txtpre" class="form-control text-center">
                            <label>Stock</label>
                            <input type="text" name="txtcanti" class="form-control text-center">
                            <label>Categoria</label>
                            <select  name="categoria" class="form-control text-center"> 
                            <%
                                CategoriaServicios cate = new CategoriaServicios();
                                List<CategoriaRest> c = cate.listarcategoria();
                                    
                                for(CategoriaRest u:c)
                            { 
                            %> 
                            <option value="<%= u.getIdCategoria()%>"><%= u.getNombre()%></option>
                            
                            <% }%>  
                            </select>
                            
                            </div>
                            
                        </div>
                        <div class="card-footer">
                            <a href="ControladorEmp?accion=RegistrarProducto" class="btn btn btn-primary">Registrar</a>                            
                        </div>
                    </div>
                           
                </div>
      
        
             </div>          
        </div>    
    </body>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.js"> </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"> </script>
    <script src="js/cantidad.js" type="text/javascript"></script>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
   
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</html>
