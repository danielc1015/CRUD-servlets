/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.util.ArrayList;

/**
 *
 * @author danielcardenas
 */
public interface MetodosImpl {
    
    
    public void agregar(Object objeto);
    
    public void editar(int id, Object objeto);
    
    public void eliminar(int id);
    
    public ArrayList<Object> listar();
    
}
