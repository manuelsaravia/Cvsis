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
}
