<%-- 
    Document   : listausuarios.jsp
    Created on : 25-04-2019, 10:19:07
    Author     : danielcardenas
--%>
<%@page import="java.util.ArrayList" %>
<%@page import="models.Ciudad"%>
<% ArrayList<Ciudad> listaCiudades = (ArrayList<Ciudad>) request.getAttribute("listaCiudades");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Document</title>
        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link rel="stylesheet" href="css/materialize.css">
    </head>

    <body>
        <!-- Menu desde archivo externo -->
      <jsp:include page="fixed/menu.html" />
        
        <!-- Page Layout here -->
        <div class="row">
        <!-- Menu y navbar desde archivo externo -->
        <jsp:include page="fixed/sidenav.html" />

            <div class="col s12 m8 l9">
                <h3 class="heading">Agregar Usuario</h3>
                <form class="col s12" method="POST" action="guardarusuario.do">
                    <div class="row">
                        <div class="input-field col s6">
                            <input id="first_name" name="nombre" type="text" class="validate">
                            <label for="first_name">Nombre</label>
                        </div>
                        <div class="input-field col s6">
                            <input id="last_name" name="apellido" type="text" class="validate">
                            <label for="last_name">Apellido</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s6">
                            <select id="city" name="ciudad">
                                <option value="" disabled selected>Escoja una opción</option>

                                <%
                                    for (Ciudad ciudad : listaCiudades) {
                                %>
                                <option value="<%out.print(ciudad.getId());%>"><%out.print(ciudad.getNombre());%></option>
                                <%
                                    }
                                %>
                            </select>
                            <label for="city">Ciudad</label>
                        </div>

                    </div>

                    <div class="row">
                        <input type= "submit" class="waves-effect waves-light btn" placeholder="Guardar">
                    </div>        

                </form>
            </div>

        </div>

        <!--ALL JS-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="js/materialize.min.js"></script>

        <!--Inicializations-->
        <script>
            $(document).ready(function () {
                $('.sidenav').sidenav();
                $('.datepicker').datepicker();
                $('.fixed-action-btn').floatingActionButton();
                $('select').formSelect();
            });
        </script>
    </body>

</html>