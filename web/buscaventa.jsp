<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <title>Busqueda Venta</title>
    </head>
    <body>
        <div class="container mt-4">
            <div class="card">
               
                
                <div class="card-header">
                    <a class="btn btn-outline-danger" href="lventa.jsp">Volver</a>                   
                </div>               
                            
                    
                
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
                        <c:forEach var="p" items="${datosventa}" >
                                <td>${p.getIdcompra()}</td>
                                <td>${p.getEstado()}</td>
                                <td>${p.getFecha()}</td>
                                <td>${p.getMonto()}</td>
                                <td>${p.getComprador()}</td>                              
                                                     
                        </c:forEach>  
                                
                </div>
                </div>
                
            </div>
        </div>
    </body>
</html>