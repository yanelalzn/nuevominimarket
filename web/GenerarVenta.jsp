<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Generar Venta</title>
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
        <br>
        
        <h3>Generar Venta</h3>
        <div class="d-flex">
            <div class="col-sm-4">
                <div class="card">
                    <form action="ControladorEmp?accion=Venta">
                    <div class="card-body">
                        <div class="form-group">
                            <label>Datos del cliente</label>
                        </div>
                        <div class="form-group d-flex">
                            <div class="col-sm-6 d-flex">                              
                                <input type="text" name="codigocliente" value="${c.getNum_doc()}" placeholder="Codigo Cliente" class="form-control">
                               <input type="submit" name="accion1" value="BuscarCliente" class="btn btn-dark">                                

                            </div>                            
                            <div class="col-sm-6">                               
                                <input type="text" name="nombrecliente" value="${c.getNombre()}" class="form-control ">                                
                            </div>
                        </div>
                        <div class="form-group">                           
                            <label>Datos Producto</label>
                        </div>
                        <div class="form-group d-flex">
                            <div class="col-sm-6 d-flex">
                               <input type="text" name="producto" placeholder="Cod_Producto" class="form-control">
                               <input type="submit" name="accion" value="Buscar" class="btn btn-dark">
                            </div>                            
                            <div class="col-sm-6">
                                <input type="text" name="nombrecliente" class="form-control ">
                            </div>
                        </div>
                        <div class="form-group d-flex">                            
                            <div class="col-sm-6 d-flex">
                               <input type="text" name="precio" placeholder="Cod_Producto" class="form-control">                               
                            </div> 
                            <div class="col-sm-3">
                                <input type="number" name="cantidad" class="form-control ">
                            </div>
                            <div class="col-sm-3">
                                <input type="text" name="stock" class="form-control ">
                            </div>                       
                        </div> 
                        <div class="form-group">
                            <a href="" class="btn btn-dark">Agregar</a>
                        </div>
                    </div>
             </form>
                </div>
            </div>
            
            
            <div class="col-sm-7">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex  col-sm-6 ml-auto">
                            <label>NumeroSerie</label>
                            <input type="text" name="numeroserie" class="form-control">
                        </div>
                        <br>
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Nro</th>
                                    <th>Codigo</th>
                                    <th>Descripcion</th>
                                    <th>Precio</th>
                                    <th>Cantidad</th>
                                    <th>Subtotal</th>
                                    <th>Operaciones</th>
                                </tr>
                            </thead>
                            <tbody>
                               
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                
                            </tbody>
                        </table>

                    </div>
                    
                    <div class="card-footer">
                        <div>
                            <a href="" class="btn btn-dark">Generar Venta</a>
                            <a href="" class="btn btn-dark">Cancelar</a>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

</html>
