<%-- 
    Document   : libros
    Created on : 23/05/2015, 01:03:44 PM
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
                                        <li class="active">Libros Investigación</li>
                                        
                                    </ol>
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                         
                                            <ul class="nav nav-pills">
  
                                                <li role="presentation" class=""><a href="articulos.jsp">Articulos</a></li>
  
                                                <li role="presentation" class="active"><a>Libros Investigación</a></li>
 
                                            </ul>
                                            <div class="panel panel-default">
                                                <div class="panel-body">
                                                    <div class="row">
                                                                                                       <div align="center">
                                                                                                           <div class="col-md-12 col-md-offset-0">
                                                                                                               <div class="panel panel-default">
                                                                                                                   <!-- Default panel contents -->
                                                                                                                   <div class="panel-heading">Libros de Investigación</div>
                                                                                                                   <div class="panel-body">
                                                                                                                       <!-- Table -->
                                                                                                                       <div class="table-responsive">
                                                                                                                           <div align="center">
                                                                                                                               <table class="table">
                                                                                                                                   <thead>
                                                                                                                                       <tr>
                                                                                                                                           <th>Titulo</th> 
                                                                                                                                           <th>Editorial</th>
                                                                                                                                           <th>Año</th>
                                                                                                                                           <th>Mes</th>
                                                                                                                                           <th>ISBN</th>
                                                                                                                                           <th>Pais</th>
                                                                                                                                           <th>Medio</th>
                                                                                                                                           <th>Estilo</th>
                                                                                                                                           <th></th>
                                                                                                                                           <th></th>
                                                                                                                                       </tr>
                                                                                                                                   </thead>
                                                                                                                                   <tbody class="tablas"> 
                                                                                                                                       <tr>       
                                                                                                                                           <td>
                                                                                                                                               <div class="row">
                                                                                                                                                    <div class="col-lg-12">
                                                                                                                                                        <input class="form-control" id="titulo" name="titulo" placeholder="Desarrollo Libre" type="text" required>
                                                                                                                                                    </div>
                                                                                                                                                </div>
                                                                                                                                           </td>
                                                                                                                                           <td>
                                                                                                                                               <div class="row">
                                                                                                                                                    <div class="col-lg-12">
                                                                                                                                                        <input class="form-control" id="editorial" name="editorial" placeholder="Editorial Ltda." type="text" required>
                                                                                                                                                    </div>
                                                                                                                                                </div>
                                                                                                                                           </td>
                                                                                                                                           <td>
                                                                                                                                               <div class="row">
                                                                                                                                                    <div class="col-lg-12">
                                                                                                                                                        <input class="form-control" id="año" name="año" placeholder="2015" type="number" required>
                                                                                                                                                    </div>
                                                                                                                                                </div>
                                                                                                                                           </td>
                                                                                                                                           <td>
                                                                                                                                               <select class="form-control" id="mes" name="mes">
                                                                                                                                                   <option value="1">Enero</option>
                                                                                                                                                   <option value="2">Febero</option>
                                                                                                                                                   <option value="3">Marzo</option>
                                                                                                                                                   <option value="4">Abril</option>
                                                                                                                                                   <option value="5">Mayo</option>
                                                                                                                                                   <option value="6">Junio</option>
                                                                                                                                                   <option value="7">Julio</option>
                                                                                                                                                   <option value="8">Agosto</option>
                                                                                                                                                   <option value="9">Septiembre</option>
                                                                                                                                                   <option value="10">Octubre</option>
                                                                                                                                                   <option value="11">Noviembre</option>
                                                                                                                                                   <option value="12">Diciembre</option>
                                                                                                                                               </select>
                                                                                                                                           </td>
                                                                                                                                           <td>
                                                                                                                                               <div class="row">
                                                                                                                                                    <div class="col-lg-12">
                                                                                                                                                        <input class="form-control" id="isbn" name="isbn" placeholder="248" type="number" required>
                                                                                                                                                    </div>
                                                                                                                                                </div>
                                                                                                                                           </td>
                                                                                                                                           <td>
                                                                                                                                               <div class="row">
                                                                                                                                                    <div class="col-lg-12">
                                                                                                                                                        <input class="form-control" id="pais" name="pais" placeholder="Colombia" type="text" required>
                                                                                                                                                    </div>
                                                                                                                                                </div>
                                                                                                                                           </td>
                                                                                                                                           <td>
                                                                                                                                               <div class="row">
                                                                                                                                                    <div class="col-lg-12">
                                                                                                                                                        <input class="form-control" id="medio" name="medio" placeholder="Impreso" type="text" required>
                                                                                                                                                    </div>
                                                                                                                                                </div>
                                                                                                                                           </td>
                                                                                                                                           <td>
                                                                                                                                               <div class="row">
                                                                                                                                                    <div class="col-lg-12">
                                                                                                                                                        <input class="form-control" id="estilo" name="estilo" placeholder="Capitulo" type="text" required>
                                                                                                                                                    </div>
                                                                                                                                                </div>
                                                                                                                                           </td>
                                                                                                                                           <td>
                                                                                                                                               <div class="btn-group">
                                                                                                                                                   <button class="btn btn-warning" id="actualizar" name = "requerimiento" value="actualizarLibro" type="submit">
                                                                                                                                                       <span class="glyphicon glyphicon-ok"></span>
                                                                                                                                                   </button>
                                                                                                                                               </div>
                                                                                                                                           </td>
                                                                                                                                           <td>
                                                                                                                                               <div class="btn-group">
                                                                                                                                                   <button class="btn btn-danger" id="eliminar" name = "requerimiento" value="eliminarLibro" type="submit">
                                                                                                                                                       <span class="glyphicon glyphicon-remove"></span>
                                                                                                                                                   </button>
                                                                                                                                               </div>
                                                                                                                                           </td>
                                                                                                                                       </tr>
                                                                                                                                   </tbody>
                                                                                                                               </table>
                                                                                                                               <div class="btn-group">
                                                                                                                                   <button class="btn btn-success" id="agregar" name = "requerimiento" value="agregarLibro" type="submit">Agregar Libro
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
