/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.util.ArrayList;

/**
 *
 * @author danielcandiapereira
 */
public class Categoria {
    private int id;
    private String nombre;
    
    private static ArrayList<Categoria> listaCategorias = new ArrayList();

    public Categoria(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    public Categoria(String nombre) {
        this.nombre = nombre;
    }
    
    public Categoria() {}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    // ** METHODS OF THE INTERFACE **
    // START HERE

    public ArrayList<Object> listar() {
        
        return (ArrayList)listaCategorias;
        
    }
    
    public void agregar(Object objeto) {
        int idMayor = 1;
        
        if (listaCategorias != null && listaCategorias.size() > 0) {
            for (Categoria categoria : listaCategorias) {
                if (categoria.id > idMayor) {
                    idMayor = categoria.id;
                }
            }
            idMayor++;
        }
        
        Categoria categoria = (Categoria)objeto;
        
        listaCategorias.add(new Categoria(idMayor, categoria.nombre));   
        
    }
    
    public static Categoria buscar(int id) {
        Categoria categoriaEncontrada = new Categoria();
        for (Categoria categoria : listaCategorias) {
            if (categoria.id == id) {
                categoriaEncontrada = categoria;
                break;
            }
        }
        return categoriaEncontrada;
    }
    
    public void eliminar(int id) {
        
        for (Categoria categoria : listaCategorias) {
            if (categoria.id == id) {
                listaCategorias.remove(categoria);
                break;
            }
        }
    }
    
    
}
