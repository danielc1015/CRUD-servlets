<%-- 
    Document   : agregarproducto
    Created on : 03-05-2019, 12:48:20
    Author     : danielcandiapereira
--%>

<%@page import="java.util.ArrayList" %>
<%@page import="models.Categoria"%>
<% ArrayList<Categoria> listaCategorias = (ArrayList<Categoria>) request.getAttribute("listaCategorias");%>
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
                <h3 class="heading">Agregar Producto</h3>
                <form class="col s12" method="POST" action="agregarproducto.do">
                    <div class="row">
                        <div class="input-field col s6">
                            <input id="nombre" name="nombre" type="text" class="validate">
                            <label for="nombre">Nombre</label>
                        </div>
                        <div class="input-field col s6">
                            <input id="precio" name="precio" type="number" class="validate">
                            <label for="precio">Precio</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s6">
                            <select id="categoria" name="categoria">
                                <option value="" disabled selected>Escoja una opcion</option>

                                <%
                                    for (Categoria categoria : listaCategorias) {
                                %>
                                <option value="<%out.print(categoria.getId());%>"><%out.print(categoria.getNombre());%></option>
                                <%
                                    }
                                %>
                            </select>
                            <label for="categoria">Categoria</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s6">
                            <input id="stock" name="stock" type="number" class="validate">
                            <label for="stock">Stock</label>
                        </div>
                        <div class="input-field col s6">
                            <input id="foto" name="foto" type="text" class="validate">
                            <label for="foto">Foto</label>
                        </div>
                    </div>
                            
                    <div class="row">
                        <div class="input-field col s6">
                            <input id="detalle" name="detalle" type="text" class="validate">
                            <label for="detalle">Detalle</label>
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