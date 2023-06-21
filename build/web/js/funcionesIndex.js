/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

//esta funcion permite cargar la url de una pagina dentro de la seccion contenido dinamico y asi no abrir una nueva pestaña
function cargarElementoDinamicamente(url, elemento){
    var request = new XMLHttpRequest();
    request.open("GET",url, false);
    request.send(null);
    elemento.innerHTML = request.responseText;
}
//carga el altausuario en el contenido dinamico
function cargarAltaUsuario(){
    cargarElementoDinamicamente("altaUsuario.jsp", document.getElementById("contenidoDinamico"));
}
//carga el login en el contenido dinamico
function cargarLogin(){
    cargarElementoDinamicamente("login.jsp", document.getElementById("contenidoDinamico"));
}
