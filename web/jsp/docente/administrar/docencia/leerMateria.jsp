<%-- 
    Document   : leerMateria.jsp
    Created on : 19/05/2015, 10:18:58 PM
    Author     : Manuel
--%>
<jsp:useBean id="facade" class="com.cvsis.facade.Facade" scope="session"></jsp:useBean>
<jsp:useBean id="materia" class="com.cvsis.dto.Materia" scope="session"></jsp:useBean>
<jsp:useBean id="docente" class="com.cvsis.dto.Docente" scope="session"></jsp:useBean>
<%
    String btn = request.getParameter("requerimiento");
    if(btn.equals("agregarMateria")){
        try{
            String codCurso = request.getParameter("codigoCurso");
            String nomCurso = request.getParameter("nombreCurso");
            String sem = request.getParameter("semestre");
            materia.setCodigo(codCurso);
            materia.setNombre(nomCurso);
            materia.setSemestre(sem);
            docente.setId(session.getAttribute("idDocente").toString());
            String imp = facade.registrarMateria(materia,docente);
            if(!imp.equals("error")){
                session.setAttribute("tablaMaterias",session.getAttribute("tablaMaterias").toString()+imp.split("-")[0]);
                session.setAttribute("Mensaje", "<div class=\"alert alert-success\" role=\"alert\">"+imp.split("-")[1]+"</div>");
                response.sendRedirect("materias.jsp");
            }
            else{
                session.setAttribute("Mensaje", "<div class=\"alert alert-warning\" role=\"alert\">Inconsistencias</div>");
                response.sendRedirect("materias.jsp");
            }
        }catch(Exception e){
            session.setAttribute("Mensaje", "<div class=\"alert alert-danger\" role=\"alert\">Datos Incorrectos</div>");
            response.sendRedirect("materias.jsp");
        }
        
        
    }
    
    %>
