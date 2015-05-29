<%-- 
    Document   : materias
    Created on : 22/05/2015, 09:14:18 PM
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
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta content="width=device-width, heigth=device-height, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!--Información-->
        <meta content="CVSIS" name="description">
        <meta content="Megaterios" name="author">
        <meta content="index, follow" name="robots">
        <!--Normalizar estilos-->
        <link href="../../../../css/normalize.css" rel="stylesheet">
        <!--Bootstrap-->
        <link href="../../../../css/bootstrap.css" rel="stylesheet">
        <link href="../../../../css/bootstrap-theme.css" rel="stylesheet">
        <link href="../../../../css/bootstrap-formhelpers.css" rel="stylesheet">
        <!-- Core CSS - Include with every page -->
        <link href="../../../../css/bootstrap.min.css" rel="stylesheet">
        <link href="../../../../font-awesome/css/font-awesome.css" rel="stylesheet">

        <!-- Page-Level Plugin CSS - Dashboard -->
        <link href="../../../../css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
        <link href="../../../../css/plugins/timeline/timeline.css" rel="stylesheet">

        <!-- SB Admin CSS - Include with every page -->
        <link href="../../../../css/sb-admin.css" rel="stylesheet">

        <!--Hojas de estilo-->
        <link href="../../../../css/style.css" rel="stylesheet">
        <!--Iconos-->
        <link href="../../../../img/favicon.ico" rel="shortcut icon">
    </head>
    <body>
        <div  class="container">
        <header>
                <figure>
                    <img alt="CVSIS" class="img-responsive" id="banner_cursoft" src="../../../../img/banne_cursoft.png">
                </figure>
            </header>

            <br>
            
                <div class="row">
                    
                    <div class="col-xs-6 col-sm-4"></div>
                    <div class="col-xs-6 col-sm-4 hidden-xs"></div>
                    <div class="col-xs-6 col-sm-4">
                        <div class="well well-sm" align="right">
                            <% out.print(session.getAttribute("nombre") + " " + session.getAttribute("apellido"));%>
                            <a href="../../../usuario/iniciarSesion.jsp">  (Cerrar sesión)</a>
                        </div>
                            
                    </div>
                </div>
            
                            <div class="row">
                                <br>
                <%
                    if (session.getAttribute("Mensaje") == null) {
                        session.setAttribute("Mensaje", "");
                    }
                    out.print(session.getAttribute("Mensaje"));
                    session.setAttribute("MensajeRecuperar", "");
                    session.setAttribute("Mensaje", "");
                %>
                                <div class="col-md-3" id="menu">
                                    
                            
                                <ul class="nav nav-pills nav-stacked">
                                    <li role="presentation" class="active">
                                        <a href="#">Administrar</a>
                                        <ul class="nav nav-tabs-justified nav-second-level">
                                            <li class="dropdown">
                                               <a class="dropdown-toggle" data-toggle="dropdown" href="#">Docencía
                                               <span class="caret"></span></a>
                                               <ul class="dropdown-menu">
                                                   <li><a href="#">Materias</a></li>
                                                   <li><a href="#">Formación</a></li>
                                               </ul>
                                               
                                            </li>
                                            <li class="dropdown">
                                               <a class="dropdown-toggle" data-toggle="dropdown" href="#">Investigacion
                                               <span class="caret"></span></a>
                                               <ul class="dropdown-menu">
                                                   <li><a href="#">Grupos de Investigación</a></li>
                                                   <li><a href="#">Produccion Bibliografica</a></li>
                                                   <li><a href="#">Eventos</a></li>
                                               </ul>
                                               
                                            </li>
                                            <li class="dropdown">
                                               <a class="dropdown-toggle" data-toggle="dropdown" href="#">Produccion Tecnologica
                                               <span class="caret"></span></a>
                                               <ul class="dropdown-menu">
                                                   <li><a href="#">Consultoria-Asesoria</a></li>
                                                   <li><a href="#">Software</a></li>
                                                   <li><a href="#">Spin Off</a></li>
                                               </ul>
                                               
                                            </li>
                                            <li>
                                                <a href="#">Proyectos</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            
                                
                            </div>
                                <!-- Aca esta todo el contenido de la pagina -->
                                
                                <div class="col-md-9">
                                    <ol class="breadcrumb">
                                        <li><a href="../../inicioDocente.jsp">Home</a></li>
                                        <li class="active">Materias</li>
                                        
                                    </ol>
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            
                                            <div class="row">
                                                                       <form action="leerMateria.jsp" method="post" role="form" class="form-horizontal">
                                                                   <div align="center">
                                                                   <div class="col-md-8 col-md-offset-2">
                                                                   <div class="panel panel-default">
                                                                       <!-- Default panel contents -->
                                                                       <div class="panel-heading">Materias Dictadas</div>
                                                                       <div class="panel-body">
                                                                           <!-- Table -->
                                                                           <div class="table-responsive">
                                                                               <div align="center">
                                                                                   <table class="table">
                                                                                       <thead>
                                                                                           <tr>
                                                                                               <th>Codigo Curso</th> 
                                                                                               <th>Nombre Asignatura</th>
                                                                                               <th>Semestre</th>
                                                                                               <th></th>
                                                                                               <th></th>
                                                                                           </tr>
                                                                                       </thead>
                                                                                       <tbody class="tablas">
                                                                                           <% out.println(session.getAttribute("tablaMaterias").toString()); %>
                                                                                           <tr>
                                                                                               <td>
                                                                                                   <div class="row">
                                                                                                   <div class="col-md-10">
                                                                                                       <input class="form-control" id="codigoCurso" name="codigoCurso" placeholder="15624" type="number" required>
                                                                                                   </div>
                                                                                                   </div>
                                                                                               </td>
                                                                                               <td>
                                                                                                   <div class="row">
                                                                                                   <div class="col-md-12">
                                                                                                       <input class="form-control" id="nombreCurso" name="nombreCurso" placeholder="Ingenieria del Software" type="text" required>
                                                                                                   </div>
                                                                                                   </div>
                                                                                               </td>
                                                                                               <td>
                                                                                                   <div class="row">
                                                                                                   <div class="col-md-12">
                                                                                                       <input class="form-control" id="semestre" name="semestre" placeholder="1/2015" type="text" required>
                                                                                                   </div>
                                                                                                   </div>
                                                                                               </td>
                                                                                               <td>
                                                                                                   <div class="btn-group">
                                                                                                       <button class="btn btn-warning" id="actualizar" name = "requerimiento" value="actualizarMateria" type="submit">
                                                                                                           <span class="glyphicon glyphicon-ok"></span>
                                                                                                       </button>
                                                                                                   </div>
                                                                                               </td>
                                                                                               <td>
                                                                                                   <div class="btn-group">
                                                                                                       <button class="btn btn-danger" id="eliminar" name = "requerimiento" value="eliminarrMateria" type="submit">
                                                                                                           <span class="glyphicon glyphicon-remove"></span>
                                                                                                       </button>
                                                                                                   </div>
                                                                                               </td>
                                                                                           </tr>
                                                                                       </tbody>
                                                                                   </table>
                                                                                   <div class="btn-group">
                                                                                       <button class="btn btn-success" id="agregar" name = "requerimiento" value="agregarMateria" type="submit">Agregar Materia
                                                                                           <span class="glyphicon glyphicon-plus-sign"></span>
                                                                                       </button>
                                                                                   </div>
                                                                               </div>
                                                                           </div>
                                                                       </div>
                                                                   </div>
                                                                   </div>
                                                                   </div>
                                                                           </form>
                                                                   </div>
                                        </div>
                                    </div>
                                </div>
                                
                                
                                
                        </div>
                            
                            
          
        
          </div>
        
         <div id="footer" align="center">                
            <footer>
                <p><strong>Copyright © 2014. Programa de Ingeniería de Sistemas - UFPS</strong></p>
                <p>Desarrollado por: <span class="glyphicon glyphicon-user"></span><strong> Manuel Saravia</strong></p>
            </footer>
            </div>
        
        
        
        
        
       <script src="../../../../js/jquery.js"></script>
	<script src="../../../../js/bootstrap.min.js"></script>
                            
                            
                            
                            
    </body>
</html>
