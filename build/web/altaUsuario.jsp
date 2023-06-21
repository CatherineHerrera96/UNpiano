<%-- 
    Document   : altaUsuario
    Created on : 8/06/2023, 9:53:07 p. m.
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
            <form class="formularioAlta" id="formularioAlta">
                <h1>Registro de Usuarios</h1>
                
                <%--aca el formulario para ingresar los datos para crear una nueva cuenta y botones--%>
                <label>CURP:</label> <input type="text" class="txt" id="txtCurp" required="">
                <br>
                <br>
                <label>Nombre:</label> <input type="text" class="txt" id="txtNombre" required="" onkeyup="usuarioGeneradoAutomaticamente()">
                <br>
                <br>
                <label>Apellidos:</label> <input type="text" class="txt" id="txtApellidos" required="" onkeyup="usuarioGeneradoAutomaticamente()">
                <br>
                <br>
                <label>Contraseña:</label> <input type="password" class="txt" id="txtContrasena" required="" onkeyup="coincidirContrasena()">
                <label>Repita la Contraseña:</label> <input type="password" class="txt" id="txtRepetirContrasena" required="" onkeyup="coincidirContrasena()">
                <br>
                <br>                
                <label class="avisoContrasena" id="avisoContrasena">---------</label>
                <br>
                <br>
                <label>Usuario Generado Automaticamente:</label> <input type="text" class="txt" id="txtUsuarioGeneradoAutomaticamente" required="" readonly="">
                
                <input type="submit" value="Enviar Datos" class="btn" id="btnEnviarDatos" disabled="">
                <input type="button" value="Borrar Datos" class="btn" id="btnBorrar" onclick="resetearFormulario()">
            </form>
            
        </div>
    </body>
    <!-- aca se vincula con el archivo java script -->
    <script src="js/funcionesAltaUsuario.js"></script>
</html>
