class Forma{
 calcularArea(){
 }
}
class Circulo{
    constructor(raio){ 
    this.raio = π * raio²;
       calcularArea(){
        return this.raio
       }

        
       
    }
    
}

class Retangulo {
    constructor(Aretangulo){
      calcularArea();
     this.Aretangulo = largura * altura
     return this.Aretangulo

    }  
}

let circulo = new Circulo(5); // Raio = 5
console.log(circulo.calcularArea()); // A área do círculo é: 78.54

let retangulo = new Retangulo(4, 6); // Largura = 4, Altura = 6
console.log(retangulo.calcularArea()); // A área do retângulo é: 24