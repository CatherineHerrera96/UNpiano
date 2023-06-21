//esta es la funcion para borrar los datos ingresados
function resetearFormulario(){
    document.getElementById("formularioAlta").reset();
    var avisoContrasena = document.getElementById("avisoContrasena");
    var btnEnviarDatos = document.getElementById("btnEnviarDatos");
  
    btnEnviarDatos.disabled = true;
    avisoContrasena.innerHTML = "---------";
    avisoContrasena.style.color = "black";
}

//esta es la funcion para generar el usuario automatico
function usuarioGeneradoAutomaticamente(){
    var nombre = document.getElementById("txtNombre");
    var apellidos = document.getElementById("txtApellidos");
    var usuarioGeneradoAutomaticamente = document.getElementById("txtUsuarioGeneradoAutomaticamente");
    var resultadoCombinado = nombre.value.slice(0,3) + apellidos.value.slice(0,3) + "@UNpiano.com";
    
    usuarioGeneradoAutomaticamente.value = resultadoCombinado;
    
    //este if mantiene la caja de usuario generado vacia hasta que añaden datos
    if(nombre.value.length == 0 || apellidos.value.length == 0){
        usuarioGeneradoAutomaticamente.value = "";        
    }
}

// esta funcion es para verificar que las dos contraseñas coincidan
function coincidirContrasena(){
    var txtContrasena = document.getElementById("txtContrasena");
    var txtRepetirContrasena = document.getElementById("txtRepetirContrasena");
    var avisoContrasena = document.getElementById("avisoContrasena");
    
    //activacion de los botones
    var btnEnviarDatos = document.getElementById("btnEnviarDatos");
    
    btnEnviarDatos.disabled = true; //Bonton desactivado
    
    //if para aviso de coincidencia de contraseñas
    if(txtContrasena.value.length == 0 || txtRepetirContrasena.value.length == 0) {
        avisoContrasena.innerHTML = "Ninguna de las contraseñas puede quedar vacia";
        avisoContrasena.style.color = "blue";
        btnEnviarDatos.disabled = true;
        
    } else if(txtContrasena.value != txtRepetirContrasena.value ){
        avisoContrasena.innerHTML = "Las contraseñas no coinciden";
        avisoContrasena.style.color = "red";
        btnEnviarDatos.disabled = true;
        
    } else {
        avisoContrasena.innerHTML = "Perfecto!! Las contraseñas coinciden";
        avisoContrasena.style.color = "green";
        btnEnviarDatos.disabled = false;//Boton activado
    }
}
