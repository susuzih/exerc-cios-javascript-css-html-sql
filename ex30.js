function alterarTexto() {

const paragrafos = document.getElementsByTagName("p");

for(let i =0 ; i < paragrafos.length; i++){
   if(paragrafos[i].id === "paragUm"){
        paragrafos[i].textContent = "O conteudo foi alterado!";
        break;
   }     
 }
}