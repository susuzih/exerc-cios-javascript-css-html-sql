function validarCampos(){
  //validação de entradas - obter os campos de nome pelo seus IDs
  const nomeAluno = document.getElementById("nomeAluno");
  const nomeMae = document.getElementById("nomeMae");
  const email = document.getElementById("email");
  const telDDD = document.getElementById("telDDD");
  const tel = document.getElementById("tel");

  //validação de formato - Apenas letras e espaços para os campos de nome
  const nomePattern = /^[a-zA-ZÀ-ÿ\s]+$/;

  //validação de formato -Email
  const emailPattern = /^[a-zA-Z0-9._% +-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;

  //validação de formato- telefone DDD (2 digitos) e telefone (8 a 9 digitos)
  const dddPattern =/^\d{2}$/;
  const telPattern = /^\d{8,9}$/;

  //validação de campos obrigatórios e formato 
  if(!nomeAluno.value || !nomePattern.test(nomeAluno.value)){
    alert("Por favor, insira um nome válido para o aluno.");
    return false; //impede o envio 
  }
  
  if(!nomeMae.value || !nomePattern.test(nomeMae.value)){
    alert("Por favor , insira um nome válido para mãe");
    return false; //impede o envio
  }

  if(!telDDD.value || !dddPattern.test(telDDD.value)){
    alert("Por favor, insira um DDD válido (apenas 2 digitos).");
    return false; // impede o envio 
  }

  if(!tel.value || !telPattern.test(tel.value)){
    alert("Por favor , insira um número de telefone válido(8 a 9 digitos).");
    return false; // impede o envio 
  }

  if(!email.value || !emailPattern.test(email.value)){
    alert("Por favor , insira um e-mail válido .");
    return false; // impede o envio 

  }

    alert("Formulário valido com sucesso!");
    return true;
}
