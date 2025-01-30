class Cachorro{
    fazerSom(){
        console.log("AuAu!");
    }

} 
class Gato{
    fazerSom(){
     console.log("Miau!");
    }
 }
let cachorro = new Cachorro();
cachorro.fazerSom(); // Au Au!

let gato = new Gato();
gato.fazerSom(); // Miau!