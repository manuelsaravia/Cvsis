<%-- 
    Document   : leerProyecto
    Created on : 29-may-2015, 9:49:35
    Author     : Tigre
--%>


<%@page import="javax.faces.view.Location"%>
<%@page import="javax.swing.JOptionPane"%>
<jsp:useBean id="facade" scope="page" class="com.cvsis.facade.Facade" />


<% String codigoDocente, codigoP, nombreP, actaInst, institucionFinanciera, tipoProyecto, fechaInici, fechaFin;
    boolean bandera;
    codigoDocente = request.getParameter("codigoDocente");
    codigoP = request.getParameter("codigoProyecto");
    nombreP = request.getParameter("nombreProyecto");
    actaInst = request.getParameter("actaInstitucional");
    institucionFinanciera = request.getParameter("institucionFinanciera");
    tipoProyecto = request.getParameter("tiporoyecto");
    fechaInici = request.getParameter("fechaIni");
    fechaFin = request.getParameter("fechaFin");

    bandera = facade.agregarProyecto(codigoDocente, codigoP, nombreP, actaInst, institucionFinanciera, tipoProyecto, fechaInici, fechaFin);
    if (bandera == true) {
        %>
       <script>
            alert("registro exitoso");  
        </script>
       <%
    } else if (bandera == false) {

        %>
       <script>
            alert("registro ya existe"); 
            
        </script>
       <%
    }
  
     response.sendRedirect("../docente/administrar/proyectos/proyecto.jsp");

%>




