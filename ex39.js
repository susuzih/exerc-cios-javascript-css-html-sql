const  campoTexto = document.getElementById("campo-cpf");

campoTexto.addEventListener("focus", function(){
    campoTexto.style.border = "4px solid blue";

});
campoTexto.addEventListener("blur", function(){
    campoTexto.style.border = "2px solid red";
});