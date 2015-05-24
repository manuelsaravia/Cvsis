<%-- 
    Document   : formacion
    Created on : 22/05/2015, 09:24:33 PM
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
                            <a href="../usuario/iniciarSesion.jsp">  (Cerrar sesión)</a>
                        </div>
                            
                    </div>
                </div>
            
                            <div class="row">
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
                                        <li class="active">Formación</li>
                                        
                                    </ol>
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            
                                            
                                                                   <div align="center">
                                                                   
                                                                   <div class="panel panel-default">
                                                                       <!-- Default panel contents -->
                                                                       <div class="panel-heading">Tesis Dirigidas</div>
                                                                       <div class="panel-body">
                                                                           <!-- Table -->
                                                                           <div class="table-responsive">
                                                                               <div align="center">
                                                                                   <table class="table">
                                                                                       <thead>
                                                                                           <tr>
                                                                                               <th>Tipo Tesis</th> 
                                                                                               <th>Nombre Estudiante</th>
                                                                                               <th>Cedula</th>
                                                                                               <th>Nombre Proyecto</th>
                                                                                               <th>Tipo</th>
                                                                                               <th>Institucion</th>
                                                                                               <th>Programa</th>
                                                                                               <th>Estado</th>
                                                                                               <th>Fecha Inicio</th>
                                                                                               <th>Fecha Fin</th>
                                                                                               <th></th>
                                                                                               <th></th>
                                                                                           </tr>
                                                                                       </thead>
                                                                                       <tbody>
                                                                                           <tr>
                                                                                               <td>
                                                                                                   
                                                                                                   <select class="form-control" id="tipoTesis" name="tipoTesis">
                                                                                                       <option value="1">Pregrado</option>
                                                                                                       <option value="2">Maestria</option>
                                                                                                       <option value="3">Doctorado</option>
                                                                                                   </select>
                                                                                                   
                                                                                               </td>
                                                                                               <td>
                                                                                                   <div class="row">
                                                                                                   <div class="col-lg-12">
                                                                                                       <input class="form-control" id="nomEstudiante" name="nomEstudiante" placeholder="Manuel Saravia" type="text" required>
                                                                                                   </div>
                                                                                                   </div>
                                                                                               </td>
                                                                                               <td>
                                                                                                   <div class="row">
                                                                                                   <div class="col-lg-12">
                                                                                                       <input class="form-control" id="cedula" name="cedula" placeholder="1090479041" type="number" required>
                                                                                                   </div>
                                                                                                   </div>
                                                                                               </td>
                                                                                               <td>
                                                                                                   <div class="row">
                                                                                                   <div class="col-lg-12">
                                                                                                       <input class="form-control" id="nomProyecto" name="nomProyecto" placeholder="CVSIS" type="text" required>
                                                                                                   </div>
                                                                                                   </div>
                                                                                               </td>
                                                                                               <td>
                                                                                                   <select class="form-control" id="tipoDeTesis" name="tipoDeTesis">
                                                                                                       <option value="1">Desarrollo</option>
                                                                                                       <option value="2">Investigación</option>
                                                                                                   </select>
                                                                                               </td>
                                                                                               <td>
                                                                                                   <div class="row">
                                                                                                   <div class="col-lg-12">
                                                                                                       <input class="form-control" id="institucion" name="institucion" placeholder="UFPS" type="text" required>
                                                                                                   </div>
                                                                                                   </div>
                                                                                               </td>
                                                                                               <td>
                                                                                                   <div class="row">
                                                                                                   <div class="col-lg-12">
                                                                                                       <input class="form-control" id="programa" name="programa" placeholder="Ing. de Sistemas" type="text" required>
                                                                                                   </div>
                                                                                                   </div>
                                                                                               </td>
                                                                                               <td>
                                                                                                   <select class="form-control" id="estadoTesis" name="estadoTesis">
                                                                                                       <option value="1">Desarrollo</option>
                                                                                                       <option value="2">Terminada</option>
                                                                                                   </select>
                                                                                               </td>
                                                                                               <td>
                                                                                                   <div class="row">
                                                                                                   <div class="col-lg-12">
                                                                                                       <input class="form-control" id="fechaIni" name="fechaIni" placeholder="26/07/2005" type="text" required>
                                                                                                   </div>
                                                                                                   </div>
                                                                                               </td>
                                                                                               <td>
                                                                                                   <div class="row">
                                                                                                   <div class="col-lg-12">
                                                                                                       <input class="form-control" id="fechaFin" name="fechaFin" placeholder="26/07/2010" type="text" required>
                                                                                                   </div>
                                                                                                   </div>
                                                                                               </td>
                                                                                               <td>
                                                                                                   <div class="btn-group">
                                                                                                       <button class="btn btn-warning" id="actualizar" name = "requerimiento" value="actualizarTesis" type="submit">
                                                                                                           <span class="glyphicon glyphicon-ok"></span>
                                                                                                       </button>
                                                                                                   </div>
                                                                                               </td>
                                                                                               <td>
                                                                                                   <div class="btn-group">
                                                                                                       <button class="btn btn-danger" id="eliminar" name = "requerimiento" value="eliminarTesis" type="submit">
                                                                                                           <span class="glyphicon glyphicon-remove"></span>
                                                                                                       </button>
                                                                                                   </div>
                                                                                               </td>
                                                                                           </tr>
                                                                                       </tbody>
                                                                                   </table>
                                                                                   <div class="btn-group">
                                                                                       <button class="btn btn-success" id="agregar" name = "requerimiento" value="agregarTesis" type="submit">Agregar Tesis
                                                                                           <span class="glyphicon glyphicon-plus-sign"></span>
                                                                                       </button>
                                                                                   </div>
                                                                               </div>
                                                                           </div>
                                                                       </div>
                                                                   </div>
                                                                   
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