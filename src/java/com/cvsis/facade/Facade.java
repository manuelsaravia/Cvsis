/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cvsis.facade;
import com.cvsis.dto.*;
import com.cvsis.controller.*;
/**
 *
 * @author Manuel
 */
public class Facade {
    
    public Facade(){}
    
    public boolean registrarUsuario(Usuario u, Docente d){
        AdministrarUsuario au = new AdministrarUsuario();
        return au.registrarUsuario(u,d);
    }
    
    public String validarSesion(Usuario u){
        AdministrarUsuario au = new AdministrarUsuario();
        return au.validarSesion(u);
    }
    
    public String registrarMateria(Materia m, Docente d){
        AdministrarDocente ad = new AdministrarDocente();
        return ad.registrarMateria(m,d);
    }
      public boolean agregarProyecto(String codigoDocente,String codigoP,String nombreP,String actaInst,String institucionFinanciera,String tipoProyecto,String fechaInici,String fechaFin){
        AdministrarProyecto ap=new AdministrarProyecto();
        return ap.registrarProyecto(codigoDocente, codigoP, nombreP, actaInst, institucionFinanciera, tipoProyecto, fechaInici, fechaFin);
   }
      
}
