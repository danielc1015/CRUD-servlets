<%-- 
    Document   : editarcategoria
    Created on : 08-05-2019, 21:45:12
    Author     : danielcandiapereira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="models.Categoria"%>
<% Categoria categoria = (Categoria) request.getAttribute("categoria"); %>

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
                <h3 class="heading">Editar Categoría</h3>
                <form class="col s12" method="POST" action="editarcategoria.do">
                    <input name="id" type="hidden" value="<%out.print(categoria.getId());%>">
                    <div class="row">
                        <div class="input-field col s6">
                            <input id="nombre" value="<%out.print(categoria.getNombre());%>" name="nombre" type="text" class="validate">
                            <label for="nombre">Nombre</label>
                        </div>
                    </div>

                    <div class="row">
                        <input type= "submit" class="waves-effect waves-light btn purple darken-4 white-text" placeholder="Guardar">
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