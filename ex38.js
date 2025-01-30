const paragrafo = document.getElementById("entrar");

paragrafo.addEventListener("mouseover", function(){
    paragrafo.style.color = "green";
});

paragrafo.addEventListener("mouseout", function(){
    paragrafo.style.color="";
});