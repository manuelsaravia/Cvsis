    <%-- 
    Document   : leerRegistro
    Created on : 19/05/2015, 08:11:00 PM
    Author     : Manuel
--%>

<jsp:useBean id="facade" class="com.cvsis.facade.Facade" scope="session"></jsp:useBean>
<jsp:useBean id="usuario" class="com.cvsis.dto.Usuario" scope="session"></jsp:useBean>
<jsp:useBean id="docente" class="com.cvsis.dto.Docente" scope="session"></jsp:useBean>

<%
    String btn = request.getParameter("requerimiento");
    if(btn.equals("registrarse")){
    try{
        String codigo = request.getParameter("codigo");
        String correo = request.getParameter("correo");
        String contrasenia = request.getParameter("contrasenia");
        String nombre = request.getParameter("nombre");
        String apellido= request.getParameter("apellido");
        String documento= request.getParameter("documento");
        String sexo= request.getParameter("sexo");
        String estadoCivil= request.getParameter("estadoCivil");
        String escolaridad= request.getParameter("escolaridad");
        String fechaNac= request.getParameter("fechaNac");
        String direccion= request.getParameter("direccion");
        String telefono= request.getParameter("telefono");
        String telefonoMovil= request.getParameter("telefonoMovil");
        
        int cod= Integer.parseInt(codigo);
        int doc= Integer.parseInt(documento);
        int tel= Integer.parseInt(telefono);
        int mov= Integer.parseInt(telefonoMovil);
        
        usuario.setCorreo(correo);
        usuario.setContrasenia(contrasenia);
        
        docente.setCodigo(codigo);
        docente.setNombre(nombre);
        docente.setApellido(apellido);
        docente.setDocumento(documento);
        docente.setDireccion(direccion);
        docente.setEscolaridad(escolaridad);
        docente.setEstadoCivil(estadoCivil);
        docente.setFechaNac(fechaNac);
        docente.setSexo(sexo);
        docente.setTelefono(telefono);
        docente.setTelefonoMovil(telefonoMovil);
        
        boolean b = facade.registrarUsuario(usuario, docente);
        
        //Revisar cuando se hace un registro. revisar conexion. 
        if(b){
            session.setAttribute("Mensaje", "<div class=\"alert alert-success\" role=\"alert\">Registro Exitoso</div>");
            response.sendRedirect("iniciarSesion.jsp");
        }
        else{
            session.setAttribute("Mensaje", "<div class=\"alert alert-warning\" role=\"alert\">Inconsistencia en sus Datos</div>");
            response.sendRedirect("iniciarSesion.jsp");
        }
        
    }catch(Exception e){
        session.setAttribute("Mensaje", "<div class=\"alert alert-danger\" role=\"alert\">Verifique sus Datos</div>");
        response.sendRedirect("registrarse.jsp");
    }
    }
    else{
        response.sendRedirect("iniciarSesion.jsp");
    }
    
    
    %>
    