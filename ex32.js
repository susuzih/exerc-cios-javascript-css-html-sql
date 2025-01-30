function alterarDiv(){
let conteudo = document.createElement("div");

conteudo.textContent ="Nova div adicionada";
conteudo.setAttribute("id","div1");


 document.body.appendChild(conteudo);
} 

function removeDiv(){
    let conteudo = document.getElementById("div1");

    conteudo = document.body.removeChild(conteudo);
}
