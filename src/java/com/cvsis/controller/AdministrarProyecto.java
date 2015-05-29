/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cvsis.controller;

import com.cvsis.dao.ProyectoDao;

/**
 *
 * @author Tigre
 */
public class AdministrarProyecto {

    
    public AdministrarProyecto(){}
    
    public boolean registrarProyecto(String codigoDocente,String codigoP,String nombreP,String actaInst,String institucionFinanciera,String tipoProyecto,String fechaInici,String fechaFin){
       ProyectoDao ud = new ProyectoDao();
        return ud.registrarProyecto(codigoDocente,codigoP,nombreP,actaInst,institucionFinanciera,tipoProyecto,fechaInici,fechaFin);
    }
    
}
