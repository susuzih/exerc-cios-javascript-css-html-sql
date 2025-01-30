var temp1, temp2,tem3,num3,fah,kev,cel,resul;

function CelsiusParaFah(cel){
     //alert("resultado da conta em far,cel,kev:")
     let fah;
     fah = (cel * 9/5) + 32;
      return fah;
}

function FahParaCelsius(fah){
  //alert("resultado da conta em far,cel,kev:")
  let cel;
  cel = (fah - 32) * 5/9; 
   return cel;
}
function CelsiusParaKelvin(cel){
  let kev ;
  kev =(cel + 273.15); 
   return kev;
}

function imprimiroresultado(res1){
  alert("o resultado é:"+ res1);
  //alert("o resultado em Fahrenheit :"+ res2);
}

//inicio do programa principal
temp1 = prompt("Digite uma temperatura em Celsius");
num1 = parseInt(temp1);
num2  = parseInt(temp2);



resul = CelsiusParaFah(num1, num2);
imprimiroresultado(resul);

temp2 = prompt("Digite uma temperatura em Fahrenheit");
resul = FahParaCelsius(num1, num2);
imprimiroresultado(resul);

tem3 = prompt("Digite uma temperatura em Kelvin");
num3 = parseInt(tem3)

resul = CelsiusParaKelvin(num3,num1);
imprimiroresultado(resul);