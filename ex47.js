class contaBanca{
    #saldo
    constructor(saldo){
    this.#saldo = saldo

    }
   depositar(valor){
    this.saldo = valor  

   }
 
    sacar(valor){
    this.saldo - valor == valor

  }
   
 verSaldo(){
  this.saldo || valor
   return valor


  } 
  
}  
if(saldo = valor){
    const vl = new contaBanca(saldo, valor );
   contaBanca.push(contaBanca);
   depositar();
   sacar();
  verSaldo();
  } else {
   console.log("Saldo insuficiente!");
  }  


let conta = new contaBanca();
conta.depositar(500);
console.log(conta.verSaldo());

conta.sacar(200);
console.log(conta.verSaldo()); // 300

conta.sacar(400); // Saldo insuficiente!


