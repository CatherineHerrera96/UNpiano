<%-- 
    Document   : login
    Created on : 8/06/2023, 9:53:41 p. m.
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <%--estas 3 lineas de codigo es para evitar que guarde en la memoria cache y asi no se sature de informacion--%>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //Borra directivas de memoria cache y anular predeterminados para almacenar cache
            response.setHeader("Pragma", "no-cache");//Directivas compatibles con memorias cache
            response.setDateHeader("Expires", 0);//proporciona fecha y hora para decir el tiempo de respuesta de caducir
        %>
    </head>
    <body>
        <div class="cuerpoFormulario" id="cuerpoFormulario">
            <form class="formularioLogin" id="formularioLogin">
                <h1>Iniciar sesión</h1>
                
                <%--aca estan las cajas para introducir los datos de inicio de session y los botones--%>
                
                <p>Usuario:</p>
                <div class="texto">
                    <input type="text" class="txt" id="txtUsuario" required="">
                </div>
                
                <p>Contraseña:</p>
                <div class="texto">
                    <input type="password" class="txt" id="txtContrasena" required="">
                </div>
                
                <br>
                
                <input type="submit" value="Iniciar sesion" class="btn">
                <input type="button" value="Borrar Datos" class="btn" onclick="resetearFormularioLogin()">
            </form>
            
        </div>
    </body>
    <!-- aca se vincula con el archivo java script -->
    <script src="js/funcionesLogin.js"></script>
</html>
