<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <title>Busqueda Empleado</title>
    </head>
    <body>
        <div class="container mt-4">
            <div class="card">
               
                
                <div class="card-header">
                    <a class="btn btn-outline-danger" href="listarempleado.jsp">Volver</a>                   
                </div>               
                            
                    
                
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                               <th>Cod_empleado</th>
                                <th>Apellidos</th>
                                <th>Nombre</th>
                                <th>Usuario</th>
                                <th>Distrito</th>
                                <th>Email</th>
                                <th>Numero</th>
                                <th>Rol</th> 
                                
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="p" items="${datosemp}" >
                            <tr>
                                <td>${p.getId_empleado203()}</td>
                                <td>${p.getApellido3()}</td>
                                <td>${p.getNombre3()}</td>
                                <td>${p.getUsuario()}</td>
                                <td>${p.getDistrito3()}</td>                              
                                <td>${p.getEmail3()}</td>  
                                <td>${p.getTelefono3()}</td> 
                                <td>${p.getRol3()}</td> 
                        </c:forEach>  
                                
                </div>
                </div>
                
            </div>
        </div>
    </body>
</html>