/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cvsis.dao;
import com.cvsis.dto.Docente;
import com.cvsis.dto.Usuario;
import com.cvsis.util.ConexionMysql;
import java.util.ArrayList;

/**
 *
 * @author Manuel
 */
public class UsuarioDao {

    public boolean registrarUsuario(Usuario u, Docente d) {
       try{
            String sql = "SELECT * FROM usuario WHERE correo = '"+u.getCorreo()+"';";
            ConexionMysql.conectar();
            ArrayList con = ConexionMysql.getConsultaSQL(sql);
            boolean doc,user;
            if(con.isEmpty()){
                sql = "INSERT INTO docente (codigo,nombre,apellido,documento,sexo,estadoCivil,escolaridad,fechaNac,direccion,telefono,telefonoMovil)"+
                   " VALUES ('"+d.getCodigo()+"','"+d.getNombre()+"','"+d.getApellido()+"','"+d.getDocumento()+"','"+d.getSexo()+"','"+d.getEstadoCivil()+"','"+
                   d.getEscolaridad()+"','"+d.getFechaNac()+"','"+d.getDireccion()+"','"+d.getTelefono()+"','"+d.getTelefonoMovil()+"');";
                doc = ConexionMysql.ejecutarActualizacionSQL(sql);
                sql = "SELECT idDocente FROM docente WHERE codigo = '"+d.getCodigo()+"';";
                ArrayList cod = ConexionMysql.getConsultaSQL(sql);
                sql = "INSERT INTO usuario (correo,contrasenia,codDocente) VALUES ('"+u.getCorreo()+"','"+u.getContrasenia()+"','"+cod.get(0).toString().split("-")[0]+"');";
                user = ConexionMysql.ejecutarActualizacionSQL(sql);
                
                ConexionMysql.desconectar();
                
                return user && doc;
                
            }
       }catch(Exception e){
           return false;
       }
        return false;
    }

    public String validarSesion(Usuario u) {
        try{
            String sql = "SELECT d.idDocente, d.nombre, d.apellido FROM docente d, usuario u WHERE u.codDocente = d.idDocente AND u.correo = '"+u.getCorreo()+"' AND u.contrasenia = '"+u.getContrasenia()+"';";
            ConexionMysql.conectar();
            ArrayList datos = ConexionMysql.getConsultaSQL(sql);
            String [] d = datos.get(0).toString().split("-");
            String cad = d[0] +"-"+ d[1] +"-"+ d[2];
            ConexionMysql.desconectar();
            return cad;
        }catch(Exception e){
            return "error";
        }
    }
    
}
