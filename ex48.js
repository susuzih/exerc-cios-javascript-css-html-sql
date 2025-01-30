class Animal{
    construtor(nome){
      this.nome = nome  
    }
    
  fala(){
    console.log("O animal faz um som");
  }
}
class Cachorro extends Animal{
    latir(){
        console.log("AuAu")
    }

}
let animal = new Animal("Genérico");
animal.falar(); // O animal faz um som

let cachorro = new Cachorro("Rex");
cachorro.falar(); // O animal faz um som
cachorro.latir(); // Au Au!
