<%-- 
    Document   : listacategorias
    Created on : 02-05-2019, 21:27:46
    Author     : danielcandiapereira
--%>

    <%@page import="models.Categoria"%>
<%@page import="java.util.ArrayList" %>
<% ArrayList<Categoria> lista = (ArrayList<Categoria>)request.getAttribute("lista"); %>
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
          
          <h3 class="heading"> Categorias </h3>
          

          <div class="row">
            <div class="col s12 m12">
              
              <table class="highlight centered">
                
                <thead>
                  <tr>
                      <th>Nombre</th>
                      <th>Acciones</th>
                  </tr>
                </thead>

                <tbody>
                    <% for (Categoria categoria : lista) {
                    %>
                    
                    <tr>
                        <td><%out.print(categoria.getNombre()); %></td>      
                        <td>

                          <a href="" class="btn-floating green">
                            <i class="material-icons">edit</i>
                          </a>

                          <a href="" class="btn-floating red">
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

              <a href="agregarcategoria.do" class="btn-floating btn-large blue ">
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
