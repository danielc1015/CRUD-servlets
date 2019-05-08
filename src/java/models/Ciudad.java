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
public class Ciudad {
    
    private int id;
    private String nombre;
    
    private static ArrayList<Ciudad> listaCiudades = new ArrayList();

    public int getId() {
        return id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Ciudad(String nombre) {
        this.nombre = nombre;
    }
    
    public Ciudad(){}

    private Ciudad(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }
    
    public void agregar(Object objeto) {
        int idMayor = 1;
        
        if (listaCiudades != null && listaCiudades.size() > 0) {
            for (Ciudad ciudad : listaCiudades) {
                if (ciudad.id > idMayor) {
                    idMayor = ciudad.id;
                }
            }
            idMayor++;
        }
        
        Ciudad ciudad = (Ciudad)objeto;
        
        listaCiudades.add(new Ciudad(idMayor, ciudad.nombre));   
    }
    
    
    public ArrayList<Object> listar() {
        
        return (ArrayList)listaCiudades;
        
    }
    
    public static Ciudad buscar(int id) {
        Ciudad ciudadR = new Ciudad();
        for (Ciudad ciudad : listaCiudades) {
            if (ciudad.id == id) {
                ciudadR = ciudad;
                break;
            }
        }
        return ciudadR;
    }
    
    
    public void eliminar(int id) {
        
        for (Ciudad ciudad : listaCiudades) {
            if (ciudad.id == id) {
                listaCiudades.remove(ciudad);
                break;
            }
        }
    }
    
    
    public void editar(int id, Object objeto) {
        Ciudad ciudadNueva = (Ciudad)objeto;
        
        for (Ciudad ciudad : listaCiudades) {
            if (ciudad.id == id) {
                ciudad.nombre = ciudadNueva.nombre;
            }
        }
    }
    
    
    
    
}
