<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Login</title>
        <link rel="stylesheet"  href="css/Registro_Cliente.css">
        <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/a81368914c.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
        <img class="wave" src="img/wave.png">
        <div class="container">
            <div class="img">
                <img src="img/bg.svg">
            </div>
            <div class="login-content">
                <form id="form" action="Servicios">                    
                    <br>
                    <div class="input-div one">
                        <div class="i">
                            <i class="fas fa-user"></i>
                        </div>
                        <div class="div">
                            <h5>Nombre</h5>
                            <input  onkeypress="return sololetras(event)" required  minlength="3" maxlength="9" type="text" name="txtname"class="input">
                        </div>
                    </div>
                    <div class="input-div one">
                        <div class="i">
                            <i class="fas fa-user"></i>
                        </div>
                        <div class="div">
                            <h5>Apellidos</h5>
                            <input onkeypress="return sololetras(event)" required minlength="3" maxlength="10" type="text" name="txtape" class="input">
                        </div>
                    </div>
                    <div class="input-div one">
                        <div class="i">
                            <i class="fas fa-user"></i>
                        </div>
                        <div class="div">
                            <h5>DNI</h5>
                            <input onkeypress="return solonumeros(event)" required  minlength="8" maxlength="8" type="text" name="txtdni" class="input">
                        </div>
                    </div>
                    <div class="input-div one">
                        <div class="i">
                            <i class="fas fa-user"></i>
                        </div>
                        <div class="div">
                            <h5>Username</h5>
                            <input  onkeypress="return sololetras(event)" required  minlength="4" maxlength="9" type="text" name="txtuser"class="input">
                        </div>
                    </div>
                    <div class="input-div pass">
                        <div class="i"> 
                            <i class="fas fa-lock"></i>
                        </div>
                        <div class="div">
                            <h5>Password</h5>
                            <input  required minlength="4" maxlength="6" type="password" name="txtpass" class="input">
                        </div>
                    </div>
                    
                    <div class="input-div pass">
                        <div class="i"> 
                            <i class="fas fa-lock"></i>
                        </div>
                        <div class="div">
                            <h5>Direccion</h5>
                            <input required type="text" name="txtdirec" class="input">
                        </div>
                    </div>
                    
                    <div class="input-div pass">
                        <div class="i"> 
                            <i class="fas fa-lock"></i>
                        </div>
                        <div class="div">
                            <h5>Email</h5>
                            <input onkeydown="validarEmail()" required type="text" id="email" name="txtemail" class="input">
                        </div>
                    </div>
                    
                    <div class="input-div pass">
                        <div class="i"> 
                            <i class="fas fa-lock"></i>
                        </div>
                        <div class="div">
                            <h5>Telefono</h5>
                            <input onkeypress="return solonumeros(event)" minlength="9" maxlength="9" required type="text" name="txtef" class="input">
                        </div>
                    </div>
                    <script>
                                    function registro(){
                                        var idp=$(this).parent().find("#pagar").val();
                                        swal("Pago Realizado!", "Transaccion Exitosa!", "success")
                                        //parent.location.href="Controlador?accion=carrito";                                        
                                        pago2020(idp);
                                  }
                                  function pago2020(idp) {
                                            //var url="Servicios?accion=Guardar";
                                            $.ajax({
                                                type: 'POST',
                                                url: url,
                                                data: "idp1="+idp,
                                                success: function (data, textStatus, jqXHR) {

                                   }
                                 });
    }
                    </script>
                    <input id="pagar"  type="submit" class="btn" name="accion" value="Guardar">
                    <a href="login.jsp">Regresar</a>
                </form>
            </div>
        </div>
        
        <script src="js/Validar.js" type="text/javascript"></script>
        <script type="text/javascript" src="js/Registro_Cliente.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    </body>
</html>
