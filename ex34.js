function adicionaClass(){
    let conteudo = document.createElement("h1");
    conteudo.textContent="Nova class";
    conteudo.setAttribute("id","elemento"); 
    
    document.body.appendChild(conteudo);

    conteudo = Element.classlist.add(conteudo);
    
}
function removerClass(){
    let conteudo = document.getElementById("elemento");
   conteudo = document.body.removeChild(conteudo);

    
}
  
        
    




    
        

   
   
        
 
    

