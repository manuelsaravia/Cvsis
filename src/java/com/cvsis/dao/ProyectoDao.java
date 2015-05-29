/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cvsis.dao;

import com.cvsis.util.ConexionMysql;
import java.util.ArrayList;

/**
 *
 * @author Tigre
 */
public class ProyectoDao {
    
    
    
     public boolean registrarProyecto(String codigoDocente,String codigoP,String nombreP,String actaInst,String institucionFinanciera,String tipoProyecto,String fechaInici,String fechaFin){
          try{
              boolean bandera;
         String sql = "SELECT idProyecto FROM proyecto WHERE idProyecto = '"+codigoP+"' and codDocente='"+codigoDocente+"' ;";
           ConexionMysql.conectar();
               ArrayList con = ConexionMysql.getConsultaSQL(sql);
               if(con.isEmpty()){
                   
                   sql= "INSERT INTO proyecto (idProyecto,codDocente,nombre,codActa,fechaIni,fechaFin,instFinanciera)"+" VALUES ('"+codigoP+"','"+codigoDocente+"','"+nombreP+"','"+actaInst+"','"+fechaInici+"','"+fechaFin+"','"+institucionFinanciera+"');";
                   System.out.println(sql);
                   
                 bandera=ConexionMysql.ejecutarActualizacionSQL(sql);
                   ConexionMysql.desconectar();
                   return bandera;
//                 sql = "INSERT INTO proyecto (codigo,nombre,apellido,documento,sexo,estadoCivil,escolaridad,fechaNac,direccion,telefono,telefonoMovil)"+" VALUES ('"+d.getFechaNac()+"','"+d.getDireccion()+"','"+d.getTelefono()+"','"+d.getTelefonoMovil()+"');";
//                doc = ConexionMysql.ejecutarActualizacionSQL(sql);

                   
                   
                   
               
                   
                   
               }
               
                }catch(Exception e){
           return false;
           
     }
          return false;
    
}
}
