<%-- 
    Document   : listausuarios.jsp
    Created on : 25-04-2019, 10:19:07
    Author     : danielcardenas
--%>
<%@page import="java.util.ArrayList" %>
<%@page import="models.Usuario"%>
<% ArrayList<Usuario> lista = (ArrayList<Usuario>)request.getAttribute("lista"); %>
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
          
          <h3 class="heading"> Usuarios </h3>
          

          <div class="row">
            <div class="col s12 m12">
              
              <table class="highlight centered">
                
                <thead>
                  <tr>
                      <th>Nombre</th>
                      <th>Apellido</th>
                      <th>Ciudad</th>
                      <th>Opciones</th>
                  </tr>
                </thead>

                <tbody>
                    <% for (Usuario user : lista) {
                    %>
                    
                    <tr>
                        <td><%out.print(user.getNombre()); %></td>
                        <td><%out.print(user.getApellido()); %></td>
                        <td><%out.print(user.getCiudad().getNombre()); %></td>
                    
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

              <a href="agregarusuario.do" class="btn-floating btn-large blue ">
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
