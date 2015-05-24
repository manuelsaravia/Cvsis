<%-- 
    Document   : iniciarSesion
    Created on : 18/04/2015, 11:06:59 AM
    Author     : Manuel
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <!--Codificación de caracteres-->
        <meta charset="utf-8">
        <!--Titulo-->
        <title>CVSIS - Sistema de Información</title>
        <!--Visualización-->
        <meta content="width=device-width, heigth=device-height, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!--Información-->
        <meta content="CVSIS" name="description">
        <meta content="Megaterios" name="author">
        <meta content="index, follow" name="robots">
        <!--Normalizar estilos-->
        <link href="../../css/normalize.css" rel="stylesheet">
        <!--Bootstrap-->
        <link href="../../css/bootstrap.css" rel="stylesheet">
        <link href="../../css/bootstrap-theme.css" rel="stylesheet">
        <link href="../../css/bootstrap-formhelpers.css" rel="stylesheet">
        <!--Hojas de estilo-->
        <link href="../../css/style.css" rel="stylesheet">
        <!--Iconos-->
        
    </head>
    <section>
        <div class="container">
            <header>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" id="contenido">
                        <figure>
                            <img alt="CURSOFT" class="img-responsive" id="banner_cursoft" src="../../img/banne_cursoft.png">
                        </figure>
                    </div>
                </div>
            </header>
        </div>
        <div class="row">
            <div id="subtitulo">
                <h2>Iniciar sesión</h2>
            </div>        
            <div class="col-xs-12 col-sm-offset-2 col-sm-8 col-md-offset-3 col-md-6 col-lg-offset-3 col-lg-6">
                <br>
                <%
                    if (session.getAttribute("Mensaje") == null) {
                        session.setAttribute("Mensaje", "");
                    }
                    out.print(session.getAttribute("Mensaje"));
                    session.setAttribute("MensajeRecuperar", "");
                    session.setAttribute("Mensaje", "");
                %>

                <div class="row">
                    <div class="col-xs-offset-2 col-xs-8 panel panel-default">
                        <div id="formulario">
                            <form action="../docente/principal.jsp" class="form-horizontal" method="post" role="form">
                                <div class="form-group">
                                    <label for="tipo">Tipo de usuario:</label>
                                    <select class="form-control" id="tipo" name = "tipo">
                                        <!--<option value="1">Aspirante</option>-->
                                        
                                        <!--<option value="2">Profesor</option>-->
                                        <option value="1">Docente</option>
                                        <option value="2">Administrador</option>
                                    </select>
                                    <p class="help-block">Selecciona tu tipo de usuario</p>
                                </div>
                                <div class="[CLASS_CORREO]">
                                    <label for="correo">Correo electrónico:</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
                                        <input class="form-control" id="correo" name = "correo" placeholder="Ingresa tu correo electrónico" type="text" required="">
                                    </div>
                                </div>
                                <div class="[CLASS_CONTRASENIA]">
                                    <label for="contraseña">Contraseña:</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                        <input class="form-control" id="contraseña" name = "contrasenia" placeholder="Ingresa tu contraseña" type="password" required="">
                                    </div>
                                    <div id="recordar">
                                        <p><a href="#">¿Olvidaste tu contraseña?</a></p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div id="botones">
                                        <button class="btn btn-success" id="registrar" name = "requerimiento" value="iniciarSesion" type="submit">Iniciar Sesión</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div id="registro">
                    <p><strong>¿Es tu primera vez en CVSIS?</strong></p>

                    <a class="btn btn-success" role="button" href="registrarse.jsp">Registrarse</a>
                </div>
            </div>
        </div>
                <br>
                <br>
        <div id="footer" align="center">        
        <footer>
            <p><strong>Copyright © 2014. Programa de Ingeniería de Sistemas - UFPS</strong></p>
            <p>Desarrollado por: <span class="glyphicon glyphicon-user"></span><strong> Manuel Saravia</strong></p>
        </footer>
        </div>    
        <!--Scripts-->
        <script src="../../js/modernizr.js"></script>
        <script src="../../js/main.js"></script>
        <script src="../../js/jquery.js"></script>
        <!--Scripts Bootstrap-->
        <script src="../../js/bootstrap.js"></script>
        <script src="../../js/vendor/bootstrap-filestyle.js"></script>
        <script src="../../js/vendor/bootstrap-formhelpers.js"></script>
    </section>
</html>