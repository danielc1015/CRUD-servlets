<%-- 
    Document   : listarproductos
    Created on : 03-05-2019, 13:57:14
    Author     : danielcandiapereira
--%>

<%@page import="models.Producto"%>
<%@page import="java.util.ArrayList" %>
<% ArrayList<Producto> lista = (ArrayList<Producto>)request.getAttribute("lista"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
  <html>
    <head>
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>

    <body>

      <!-- Menu desde archivo externo -->
      <jsp:include page="fixed/menu.html" />
      
      <!-- Page Layout here -->
      <div class="row">
          <!-- Menu y navbar desde archivo externo -->
        <jsp:include page="fixed/sidenav.html" />
        

        <div class="col s12 m8 l9"> <!-- Note that "m8 l9" was added -->
          
          <h3 class="heading"> Productos </h3>
          

          <div class="row">
            <div class="col s12 m12">
              
              <table class="highlight centered">
                
                <thead>
                  <tr>
                      <th>Nombre</th>
                      <th>Precio</th>
                      <th>Stock</th>
                      <th>Categoria</th>
                      <th>Detalle</th>                    
                      <th>Acciones</th>
                  </tr>
                </thead>

                <tbody>
                    <% for (Producto producto : lista) {
                    %>
                    
                    <tr>
                        <td><%out.print(producto.getNombre()); %></td>  
                        <td><%out.print("$" + producto.getPrecio()); %></td>  
                        <td><%out.print(producto.getStock()); %></td>  
                        <td><%out.print(producto.getCategoria().getNombre()); %></td>  
                        <td><%out.print(producto.getDetalle()); %></td>  
                        <td>

                          <a href="" class="btn-floating green">
                            <i class="material-icons">edit</i>
                          </a>

                          <a href="eliminarproducto.do?producto=<%out.print(producto.getId());%>" class="btn-floating red">
                            <i class="material-icons">delete</i>
                          </a>

                        </td>

                  </tr>
                    
                    <%
                        }
                    %>

                </tbody>
              </table>

            </div>
          </div>
          
          <div class="row"> 
            <div class="col s2 m2 l2 offset-l10">

              <a href="agregarproducto.do" class="btn-floating btn-large purple darken-4 ">
                <i class="material-icons">add</i>
              </a>

            </div>
          </div>


            


        </div>

      </div>



      <!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="js/materialize.min.js"></script>
    </body>
  </html>
