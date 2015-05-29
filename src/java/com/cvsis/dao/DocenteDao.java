/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cvsis.dao;
import com.cvsis.dto.Docente;
import com.cvsis.dto.Materia;
import com.cvsis.util.ConexionMysql;
/**
 *
 * @author Manuel
 */
public class DocenteDao {

    public String registrarMateria(Materia m, Docente d) {
        String sql = "INSERT INTO docencia (codMateria,nomMateria,semestre,codDocente) VALUES ('"+m.getCodigo()+"','"+m.getNombre()+"','"+m.getSemestre()+"','"+d.getId()+"');";
        String tab ="";
        try{
            ConexionMysql.conectar();
            ConexionMysql.ejecutarActualizacionSQL(sql);
            tab += "<tr><td>"+m.getCodigo()+"</td>";
            tab += "<td>"+m.getNombre()+"</td>";
            tab += "<td>"+m.getSemestre()+"</td></tr>";
            ConexionMysql.desconectar();
            return tab+"-Registro Exitoso";
        }catch(Exception e){
            return "error";
        }
    }
    
    /*
    public static void main(String arg []){
        String sql = "INSERT INTO usuario (correo, contrasenia, codDocente) VALUES ('manuel.saravia.bulla@gmail.com','1234','0');";
        ConexionMysql.conectar();
        System.out.println("conexion? "+ConexionMysql.hayConexion());
        ConexionMysql.ejecutarActualizacionSQL(sql);
        ConexionMysql.desconectar();
        
    }*/
    
    
    
}
