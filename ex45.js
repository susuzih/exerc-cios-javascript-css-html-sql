class Carro {
    constructor(marca,modelo,ano){
      this.marca = marca
      this.modelo = modelo
      this.ano = ano   
    }
    informacoes(){
        console.log(`marca: ${this.marca}`);
        console.log(`modelo: ${this.modelo}`);
        console.log(`Ano: ${this.Ano}`);
    }
}
const carro1 = new Carro("Toyota", "Corolla",2024);
const carro2 = new Carro("honda", "ZR-V", 2024);
const carro3 = new Carro("honda ","civic",2018);
const carro4 = new Carro("ford", "fusion",2022);
const carro5 = new Carro("chevrolet","Onix",2021);

carro1.informacoes();
carro2.informacoes();
carro3.informacoes();
carro4.informacoes();
carro5.informacoes();