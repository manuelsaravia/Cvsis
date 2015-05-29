/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cvsis.controller;
import com.cvsis.dto.*;
import com.cvsis.dao.DocenteDao;
/**
 *
 * @author Manuel
 */
public class AdministrarDocente {
    
    public AdministrarDocente(){}
    
    public String registrarMateria(Materia m, Docente d){
        DocenteDao dd = new DocenteDao();
        return dd.registrarMateria(m,d);
    }
    
    
}
