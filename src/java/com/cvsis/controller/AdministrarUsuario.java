/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cvsis.controller;
import com.cvsis.dto.*;
import com.cvsis.dao.*;
/**
 *
 * @author Manuel
 */
public class AdministrarUsuario {
    
    public AdministrarUsuario(){}
    
    public boolean registrarUsuario(Usuario u, Docente d){
        UsuarioDao ud = new UsuarioDao();
        return ud.registrarUsuario(u,d);
    }
    
}
