function validarEmailSenha(){
const emailUsuario=document.getElementById("Email");
const senhaUsuario=document.getElementById("senhaUsuario");

const emailPattern =/^[a-zA-Z0-9._% +-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
const senhaPattern =/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*])[A-Za-z\d!@#$%^&*]{8,}$/;

if(!emailUsuario.value || !emailPattern.test(emailUsuario.value)) {
    
    alert("Por favor, insira um email um email válido.");
  
     return false;
      
 }
if(!senhaUsuario|| !senhaPattern.test(senhaUsuario.value)) {

    alert("Por favor, insira uma senha válida (mínimo 8 caracteres, com letras maiúsculas, minúsculas, números e caracteres especiais).");

    return false;
}
   alert("Formulário validado com sucesso!");

  return true;
}