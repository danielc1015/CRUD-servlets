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
public class Producto {
    private static ArrayList<Producto> listaProductos = new ArrayList();
    
    private int id;
    private String nombre;
    private long precio;
    private int stock;
    private Categoria categoria;
    private String detalle;
    private String foto;
    
    public Producto(){}

    private Producto(int id, String nombre, long precio, int stock, Categoria categoria, String detalle, String foto) {
        this.id = id;
        this.nombre = nombre;
        this.precio = precio;
        this.stock = stock;
        this.categoria = categoria;
        this.detalle = detalle;
        this.foto = foto;
    }

    public Producto(String nombre, long precio, int stock, Categoria categoria, String detalle, String foto) {
        this.nombre = nombre;
        this.precio = precio;
        this.stock = stock;
        this.categoria = categoria;
        this.detalle = detalle;
        this.foto = foto;
    }

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

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(long precio) {
        this.precio = precio;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public String getDetalle() {
        return detalle;
    }

    public void setDetalle(String detalle) {
        this.detalle = detalle;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }
    
    // ** METODOS DE INTERFACE **
    // AQUI EMPIEZA
    
    public ArrayList<Object> listar() {
        
        return (ArrayList)listaProductos;  
    }
    
    
    public void agregar(Object objeto) {
        int idMayor = 1;
        
        if (listaProductos != null && listaProductos.size() > 0) {
            for (Producto producto : listaProductos) {
                if (producto.id > idMayor) {
                    idMayor = producto.id;
                }
            }
            idMayor++;
        }
        
        Producto producto = (Producto)objeto;
        
        listaProductos.add(new Producto(idMayor, 
                producto.nombre, producto.precio, 
                producto.stock, producto.categoria, 
                producto.detalle, producto.foto));   
    }
    
    public void eliminar(int id) {
        
        for (Producto producto : listaProductos) {
            if (producto.id == id) {
                listaProductos.remove(producto);
                break;
            }
        }
    }
    

    public void editar(int id, Object objeto) {
        Producto productoNuevo = (Producto)objeto;
        
        for (Producto producto : listaProductos) {
            if (producto.id == id) {
                producto.nombre = productoNuevo.nombre;
                producto.precio = productoNuevo.stock;
                producto.precio = productoNuevo.precio;
                producto.categoria = productoNuevo.categoria;
                producto.detalle = productoNuevo.detalle;
                producto.foto = productoNuevo.foto;
            }
        }
    }
    
    public Producto buscar(int id) {
        Producto productoF = new Producto();
        
        for (Producto producto : listaProductos) {
            if (producto.id == id) {
                productoF = producto;
                break;
            }
        }
        return productoF;
    }
    
    
    
}