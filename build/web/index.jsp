<%-- 
    Document   : home
    Created on : 02-05-2019, 16:07:22
    Author     : danielcandiapereira
--%>

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
          
          <h3 class="heading"> Home </h3>
          <p>Poner alguna cuestion aca</p>
          

        </div>

      </div>



      <!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="js/materialize.min.js"></script>
    </body>
  </html>
