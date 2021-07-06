
<%@page import="java.util.List"%>
<%@page import="webservices.Empleadoservice"%>
<%@page import="Servicios.EmpleadoService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <title>Listar Empleado</title>
    </head>
    <body>
        <div class="container mt-4">
            <div class="card">
               
                
                <div class="card-header">
                    <a class="btn btn-outline-danger" href="empmenu.jsp">Volver</a>  
                    <h2 class="text-center">Empleado</h2>
                </div>
                
                
                <form class="form" action="ControladorEmp">
                    <input type="search" name="txtbuscar2" >
                    <input type="submit" name="accion" value="BuscarEmpleado" class="btn btn-outline-dark">
                </form>
                           
                                    
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
                        <%
                            EmpleadoService emp = new EmpleadoService();
                            List<Empleadoservice> datos = emp.listadoEmpleado();
                            for(Empleadoservice u:datos)
                            {                        
                            
                                                          
                            
                        %>                                              
                            <tr>
                                <td><%= u.getIdEmpleado20()%></td>
                                <td><%= u.getApe()%></td>
                                <td><%= u.getNom()%></td>
                                <td><%= u.getUsuarioEmp()%></td>
                                <td><%= u.getDistrito()%></td>
                                <td><%= u.getEmail()%></td>
                                <td><%= u.getTelefono()%></td>
                                <td><%= u.getRol()%></td>                           
                                
                      
                             
                                <td>                                    
                                    <a href="ControladorEmp?accion=DeleteEmp&id=<%= u.getIdEmpleado20()%>" class="btn btn-outline-dark">Eliminar</a>
                                    
                                </td>
                                
                                <% }%>
                                
                            
                                
                </div>
                </div>
                
            </div>
        
</body>
</html>
