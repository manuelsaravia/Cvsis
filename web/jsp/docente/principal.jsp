<%-- 
    Document   : principal
    Created on : 18/04/2015, 12:20:15 PM
    Author     : Manuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
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
        <!-- Core CSS - Include with every page -->
        <link href="../../css/bootstrap.min.css" rel="stylesheet">
        <link href="../../font-awesome/css/font-awesome.css" rel="stylesheet">

        <!-- Page-Level Plugin CSS - Dashboard -->
        <link href="../../css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
        <link href="../../css/plugins/timeline/timeline.css" rel="stylesheet">

        <!-- SB Admin CSS - Include with every page -->
        <link href="../../css/sb-admin.css" rel="stylesheet">

        <!--Hojas de estilo-->
        <link href="../../css/style.css" rel="stylesheet">
        <!--Iconos-->
        <link href="../../img/favicon.ico" rel="shortcut icon">
    </head>
    <body>
        <div class="container">
            <header>
                <figure>
                    <img alt="CVSIS" class="img-responsive" id="banner_cursoft" src="../../img/banne_cursoft.png">
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
                    <div role="tabpanel">
                            
                            <div>
                                <!--Aqui se haran las impresiones dependiendo del objeto que elijan-->
                                <ul role="tabpanel" id="tablas" class="nav nav-pills nav-justified">
                                    <li role="presentation" class="active"><a href="#docencia" id="docencia-tab" role="tab" data-toggle="tab" aria-controls="docencia" aria-expanded="true">Docencía</a></li>
                                    <li role="presentation"><a href="#investigacion" role="tab" id="investigacion-tab" data-toggle="tab" aria-controls="investigacion" aria-expanded="false">Investigación</a></li>
                                    <li role="presentation"><a href="#tecnologicas" role="tab" id="tecnologicas-tab" data-toggle="tab" aria-controls="tecnologicas" aria-expanded="false">Tecnológica</a></li>
                                    <li role="presentation"><a href="#proyectos" role="tab" id="proyectos-tab" data-toggle="tab" aria-controls="proyectos" aria-expanded="false">Proyectos</a></li>
                                </ul>
                               
                             <div class="panel panel-default">
                               <div class="panel-body">
                                <div id="myTabContent" class="tab-content">
                                    <div role="tabpanel" class="tab-pane fade active in" id="docencia" aria-labelledby="docencia-tab">
                                       
                                       <div class="contInterno">   
                                       <div class="row">
                                           <div role="tabpanel" >
                                               <div>
                                
                                                   <!--Aqui se haran las impresiones dependiendo del objeto que elijan-->
                                
                                                   <ul role="tabpanel" id="tablas" class="nav nav-pills nav-tabs-justified">
                                                       <li role="presentation" class="active"><a href="#materias" id="materias-tab" role="tab" data-toggle="tab" aria-controls="materias" aria-expanded="true">Materias en Curso</a></li>
                                                       <li role="presentation"><a href="#tesis" role="tab" id="tesis-tab" data-toggle="tab" aria-controls="tesis" aria-expanded="false">Actividades de Formación</a></li>
                                                    </ul>
                                                   
                                                   <div class="panel panel-default">
                                                       <div class="panel-body">
                                                           <div id="myTabContent" class="tab-content">
                                                               <div role="tabpanel" class="tab-pane fade active in" id="materias" aria-labelledby="materias-tab">
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
                                                                                               <th></th>
                                                                                               <th></th>
                                                                                           </tr>
                                                                                       </thead>
                                                                                       <tbody class="tablas">
                                                                                           
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
                                                               <div role="tabpanel" class="tab-pane fade" id="tesis" aria-labelledby="tesis-tab">
                                                                   <div class="row">
                                                                   <div align="center">
                                                                   <div class="col-md-12 col-md-offset-0">
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
                                                                                       <tbody class="tablas">
                                                                                           <tr>
                                                                                               <td>
                                                                                                   <select class="form-control" id="tipoTesis" name="tipoTesis">
                                                                                                       <option value="1">Pregrado</option>
                                                                                                       <option value="2">Maestria</option>
                                                                                                       <option value="3">Doctorado</option>
                                                                                                   </select>
                                                                                               </td>
                                                                                               <td>Manuel Saravia</td>
                                                                                               <td>1090479041</td>
                                                                                               <td>CVSIS</td>
                                                                                               <td>
                                                                                                   <select class="form-control" id="tipoDeTesis" name="tipoDeTesis">
                                                                                                       <option value="1">Desarrollo</option>
                                                                                                       <option value="2">Investigación</option>
                                                                                                   </select>
                                                                                               </td>
                                                                                               <td>UFPS</td>
                                                                                               <td>Ingenieria de Sistemas</td>
                                                                                               <td>
                                                                                                   <select class="form-control" id="estadoTesis" name="estadoTesis">
                                                                                                       <option value="1">Desarrollo</option>
                                                                                                       <option value="2">Terminada</option>
                                                                                                   </select>
                                                                                               </td>
                                                                                               <td>2/03/2015</td>
                                                                                               <td>-/--/----</td>
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
                                                   </div>
                                               </div>
                                           </div>
                                       </div>
                                    </div>
                                    </div>
                        <!---------------------------------------------------------------------Actividades de investigacion--------------------------------------------------------------------------------------->            
                                    
                        
                                    <div role="tabpanel" class="tab-pane fade" id="investigacion" aria-labelledby="investigacion-tab">
                                        <div class="contInterno">   
                                       <div class="row">
                                           <div role="tabpanel" >
                                               <div>
                                
                                                   <!--Aqui se haran las impresiones dependiendo del objeto que elijan-->
                                
                                                   <ul role="tabpanel" id="tablas" class="nav nav-pills nav-tabs-justified">
                                                       <li role="presentation" class="active"><a href="#gruposInvestigacion" id="gruposInvestigacion-tab" role="tab" data-toggle="tab" aria-controls="gruposInvestigacion" aria-expanded="true">Grupos de Investigación</a></li>
                                                       <li role="presentation"><a href="#produccion" role="tab" id="produccion-tab" data-toggle="tab" aria-controls="produccion" aria-expanded="false">Producciós Bibliografica</a></li>
                                                       <li role="presentation"><a href="#eventos" role="tab" id="eventos-tab" data-toggle="tab" aria-controls="eventos" aria-expanded="false">Eventos</a></li>
                                                    </ul>
                                                   
                                                   <div class="panel panel-default">
                                                       <div class="panel-body">
                                                           <div id="myTabContent" class="tab-content">
                                                               <div role="tabpanel" class="tab-pane fade active in" id="gruposInvestigacion" aria-labelledby="gruposInvestigacion-tab">
                                                                   <div class="row">
                                                                   <div align="center">
                                                                   <div class="col-md-6 col-md-offset-3">
                                                                   <div class="panel panel-default">
                                                                       <!-- Default panel contents -->
                                                                       <div class="panel-heading">Grupos de Investigación</div>
                                                                       <div class="panel-body">
                                                                           <!-- Table -->
                                                                           <div class="table-responsive">
                                                                               <div align="center">
                                                                                   <table class="table">
                                                                                       <thead>
                                                                                           <tr>
                                                                                               <th>Nombre</th> 
                                                                                               <th>Semillero</th>
                                                                                               <th>Clasificación</th>
                                                                                               <th></th>
                                                                                               <th></th>
                                                                                           </tr>
                                                                                       </thead>
                                                                                       <tbody class="tablas">
                                                                                           <tr>
                                                                                               <td>GIDIS</td>
                                                                                               <td>Software Libre</td>
                                                                                               <td>2408</td>
                                                                                               <td>
                                                                                                   <div class="btn-group">
                                                                                                       <button class="btn btn-warning" id="actualizar" name = "requerimiento" value="actualizarGrupo" type="submit">
                                                                                                           <span class="glyphicon glyphicon-ok"></span>
                                                                                                       </button>
                                                                                                   </div>
                                                                                               </td>
                                                                                               <td>
                                                                                                   <div class="btn-group">
                                                                                                       <button class="btn btn-danger" id="eliminar" name = "requerimiento" value="eliminarGrupo" type="submit">
                                                                                                           <span class="glyphicon glyphicon-remove"></span>
                                                                                                       </button>
                                                                                                   </div>
                                                                                               </td>
                                                                                           </tr>
                                                                                       </tbody>
                                                                                   </table>
                                                                                   <div class="btn-group">
                                                                                       <button class="btn btn-success" id="agregar" name = "requerimiento" value="agregarGrupo" type="submit">Agregar Grupo
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
                                                               <div role="tabpanel" class="tab-pane fade" id="produccion" aria-labelledby="produccion-tab">
                                                                   <%--comienzo del panel de produccion--%>
                                                                   <div class="contInterno"> 
                                                                       <div class="row">
                                                                           <div role="tabpanel" >
                                                                               <div>
                                                                                   <!--Aqui se haran las impresiones dependiendo del objeto que elijan-->
                                                                                   <ul role="tabpanel" id="tablas" class="nav nav-pills nav-tabs-justified">
                                                                                       <li role="presentation" class="active"><a href="#articulo" id="articulo-tab" role="tab" data-toggle="tab" aria-controls="articulo" aria-expanded="true">Articulos</a></li>
                                                                                       <li role="presentation"><a href="#libro" role="tab" id="libro-tab" data-toggle="tab" aria-controls="libro" aria-expanded="false">Libros de Investigación</a></li>
                                                                                   </ul>
                                                                                   <div class="panel panel-default">
                                                                                       <div class="panel-body">
                                                                                           <div id="myTabContent" class="tab-content">
                                                                                               <div role="tabpanel" class="tab-pane fade active in" id="articulo" aria-labelledby="articulo-tab">
                                                                                                   <div class="row">
                                                                                                       <div align="center">
                                                                                                           <div class="col-md-10 col-md-offset-1">
                                                                                                               <div class="panel panel-default">
                                                                                                                   <!-- Default panel contents -->
                                                                                                                   <div class="panel-heading">Articulos</div>
                                                                                                                   <div class="panel-body">
                                                                                                                       <!-- Table -->
                                                                                                                       <div class="table-responsive">
                                                                                                                           <div align="center">
                                                                                                                               <table class="table">
                                                                                                                                   <thead>
                                                                                                                                       <tr>
                                                                                                                                           <th>Titulo</th> 
                                                                                                                                           <th>Año</th>
                                                                                                                                           <th>Pag. Inicio</th>
                                                                                                                                           <th>Pag. Fin</th>
                                                                                                                                           <th>Revista</th>
                                                                                                                                           <th>ISSN</th>
                                                                                                                                           <th>Idioma</th>
                                                                                                                                           <th>Volumen</th>
                                                                                                                                           <th>Pais</th>
                                                                                                                                           <th>Medio</th>
                                                                                                                                           <th></th>
                                                                                                                                           <th></th>
                                                                                                                                       </tr>
                                                                                                                                   </thead>
                                                                                                                                   <tbody class="tablas">
                                                                                                                                       <tr>
                                                                                                                                           <td>Analisis de Software</td>
                                                                                                                                           <td>2015</td>
                                                                                                                                           <td>18</td>
                                                                                                                                           <td>23</td>
                                                                                                                                           <td>Vive Digital</td>
                                                                                                                                           <td>2048</td>
                                                                                                                                           <td>Español</td>
                                                                                                                                           <td>1</td>
                                                                                                                                           <td>Colombia</td>
                                                                                                                                           <td>Digital</td>
                                                                                                                                           <td>
                                                                                                                                               <div class="btn-group">
                                                                                                                                                   <button class="btn btn-warning" id="actualizar" name = "requerimiento" value="actualizarArticulo" type="submit">
                                                                                                                                                       <span class="glyphicon glyphicon-ok"></span>
                                                                                                                                                   </button>
                                                                                                                                               </div>
                                                                                                                                           </td>
                                                                                                                                           <td>
                                                                                                                                               <div class="btn-group">
                                                                                                                                                   <button class="btn btn-danger" id="eliminar" name = "requerimiento" value="eliminarArticulo" type="submit">
                                                                                                                                                       <span class="glyphicon glyphicon-remove"></span>
                                                                                                                                                   </button>
                                                                                                                                               </div>
                                                                                                                                           </td>
                                                                                                                                       </tr>
                                                                                                                                   </tbody>
                                                                                                                               </table>
                                                                                                                               <div class="btn-group">
                                                                                                                                   <button class="btn btn-success" id="agregar" name = "requerimiento" value="agregarArticulo" type="submit">Agregar Articulo
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
                                                                                               <div role="tabpanel" class="tab-pane fade" id="libro" aria-labelledby="libro-tab">
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
                                                                                                                                           <td>Desarrollo Libre</td>
                                                                                                                                           <td>Editorial ltda</td>
                                                                                                                                           <td>2015</td>
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
                                                                                                                                           <td>258</td>
                                                                                                                                           <td>Colombia</td>
                                                                                                                                           <td>Impreso</td>
                                                                                                                                           <td>Capitulo</td>
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
                                                                   </div>
                                                                   <%--fin del panel de produccion--%>
                                                               </div> 
                                                               <div role="tabpanel" class="tab-pane fade" id="eventos" aria-labelledby="eventos-tab">
                                                                   <p>Otro panelito.</p>
                                                               </div>
                                                           </div>
                                                       </div>
                                                   </div>
                                               </div>
                                           </div>
                                       </div>
                                    </div>
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade" id="tecnologicas" aria-labelledby="tecnologicas-tab">
                                        <p>Otro panelito.</p>
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade" id="proyectos" aria-labelledby="proyectos-tab">
                                        <p>Panel auxiliar.</p>
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
            <!--Scripts-->
            <script src="../../js/modernizr.js"></script>
            <script src="../../js/main.js"></script>
            <script src="../../js/jquery.js"></script>
            <!--Scripts Bootstrap-->
            <script src="../../js/bootstrap.js"></script>
            <script src="../../js/vendor/bootstrap-filestyle.js"></script>
            <!-- Core Scripts - Include with every page -->
            <script src="../../js/jquery-1.10.2.js"></script>
            <script src="../../js/bootstrap.min.js"></script>
            <script src="../../js/plugins/metisMenu/jquery.metisMenu.js"></script>
            <!-- Page-Level Plugin Scripts - Tables -->
            
            <!-- SB Admin Scripts - Include with every page -->
            <script src="../../js/sb-admin.js"></script>
            <!-- Page-Level Demo Scripts - Tables - Use for reference -->
            


        
    </body>
</html>