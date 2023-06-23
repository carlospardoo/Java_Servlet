
function validarForma(forma){
    var usuario = forma.usuario;
    if(usuario.value == "" || usuario.value == "Escribir usuario" ){
        alert("Debe proporcionar un nombre de usuario");
        usuario.focus();
        return false; //para que no haga el envio del formulario
    }
    
    var password = forma.password;
    if(password.value == "" || password.value.length < 3 ){
        alert("Debe proporcionar un password al menos de 3 caracteres");
        password.focus();
        return false; //para que no haga el envio del formulario
    }
    
    var tecnologias = forma.tecnologia;
    var checkSeleccionado = false;
    
    for(var i= 0; i < tecnologias.length; i++){
        if(tecnologias[i].checked){
            checkSeleccionado = true;
        }
    }
    
    if(!checkSeleccionado){
        alert("Debe seleccionar una tecnología");
        return false;
    }
    
    var generos = forma.genero;
    var radioSeleccionado = false;
    
    for(var i=0; i<generos.length; i++){
        if(generos[i].checked){
            radioSeleccionado = true;
        }
    }
    
    if(!radioSeleccionado){
        alert("Debe seleccionar un género");
        return false;
    }
    
    var ocupacion = forma.ocupacion;
    if(ocupacion.value == ""){
        alert("Debe seleccionar una ocupación");
        return false;
    }
    
    //Formulario es válido
    alert("Formulario válido, enviando datos al servidor");
    return true;
    
}
