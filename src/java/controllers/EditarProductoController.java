/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Categoria;
import models.Producto;

/**
 *
 * @author danielcandiapereira
 */
public class EditarProductoController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        int idProducto = Integer.parseInt(request.getParameter("id"));
        Producto product =  new Producto();
        Categoria category = new Categoria();
        
        request.setAttribute("producto", product.buscar(idProducto));
        request.setAttribute("listaCategorias", category.listar());
        
        request.getRequestDispatcher("editarproducto.jsp").forward(request, response);
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        Producto product = new Producto();
        
        int idProducto = Integer.parseInt(request.getParameter("id"));
        String nombre = request.getParameter("nombre");
        long precio = Long.parseLong(request.getParameter("precio"));
        int idCategoria = Integer.parseInt(request.getParameter("categoria"));
        int stock = Integer.parseInt(request.getParameter("stock"));
        String foto = request.getParameter("foto");
        String detalle = request.getParameter("detalle");
        Categoria categoria = Categoria.buscar(idCategoria);
        
        product.editar(idProducto, new Producto(nombre, precio, stock, categoria, detalle, foto));
        
        response.sendRedirect("listaproductos.do");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
