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
public class Usuario implements MetodosImpl{
    
    private int id;
    
    private String nombre;
    
    private String apellido;
    
    private Ciudad ciudad;
    
    
    private static ArrayList<Usuario> listaUsuarios = new ArrayList();
    

    public int getId() {
        return id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public Ciudad getCiudad() {
        return ciudad;
    }

    public void setCiudad(Ciudad ciudad) {
        this.ciudad = ciudad;
    }
    
    

    public Usuario(String nombre, String apellido, Ciudad ciudad) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.ciudad = ciudad;
    }

    private Usuario(int id, String nombre, String apellido, Ciudad ciudad) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.ciudad = ciudad;
    }

    public Usuario() {
    }
    
    
    

    @Override
    public void agregar(Object objeto) {
        int idMayor = 1;
        
        if (listaUsuarios != null && listaUsuarios.size() > 0) {
            for (Usuario usuario : listaUsuarios) {
                if (usuario.id > idMayor) {
                    idMayor = usuario.id;
                }
            }
            idMayor++;
        }
        
        Usuario usuario = (Usuario)objeto;
        
        listaUsuarios.add(new Usuario(idMayor, usuario.nombre, usuario.apellido, usuario.ciudad));   
        
    }

    @Override
    public void editar(int id, Object objeto) {
        Usuario usuarioNuevo = (Usuario)objeto;
        
        for (Usuario usuario : listaUsuarios) {
            if (usuario.id == id) {
                usuario.nombre = usuarioNuevo.nombre;
                usuario.apellido = usuarioNuevo.apellido;
                usuario.ciudad = usuarioNuevo.ciudad;  
            }
        }
    }

    @Override
    public void eliminar(int id) {
        
        for (Usuario usuario : listaUsuarios) {
            if (usuario.id == id) {
                listaUsuarios.remove(usuario);
                break;
            }
        }
    }

    @Override
    public ArrayList<Object> listar() {
        
        return (ArrayList)listaUsuarios;
        
    }

    @Override
    public String toString() {
        return "Usuario: " + "id=" + id + ", nombre=" + nombre + ", apellido=" + apellido + " ,Ciudad="+ ciudad.getNombre();
    }
    
    
    
    
    
    
}
