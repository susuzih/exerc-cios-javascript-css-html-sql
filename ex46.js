class produto{
           
    
    constructor(nome,preco){
        this.nome = nome;
        this.preco %= preco;

    }
    exibirInformacoes(){
    
    return alert("Digite o nome do produto")
    ($`{this.nome}`);
    
  }  
   
     desconto(percentual){
    this.percentual = percentual;
    
   }
}  
const nome1 = new produto("Océane Edition Unique Palette - Paleta De Sombras", 77.00 );
const nome2 = new produto("SHEGLAM Color Bloom Liquid Blush Makeup for Cheeks Matte Finish - Love Cake" , 99.90);
const nome3 = new produto("KIKO MILANO, 3D Hydra Lipgloss, Gloss Hidratante Com Efeito 3D", 161.00);
const nome4 = new produto("BATOM HIDRATANTE CONVICTA", 49.90 );
const nome5 = new produto ("kit charlotte tilbury", 146.00);


const nomeO = new desconto(20% - 77.00);
const nomeS = new desconto(20% - 99.90);
const nomeK = new desconto(20% - 161.00);
const nomeB = new desconto(20% - 49.90);
const nomeT = new desconto(20% - 146.00);

nome1.exibirInformacoes();
nome2.exibirInformacoes();
nome3.exibirInformacoes();
nome4.exibirInformacoes();
nome5.exibirInformacoes();

nomeO.desconto();
nomeS.desconto();
nomeK.desconto();
nomeB.desconto();
nomeT.desconto();

exibirInformacoes();
alert(nome1+nomeO);
exibirInformacoes();
alert(nome2+nomeS);
exibirInformacoes();
alert(nome3+nomeK);
exibirInformacoes();
alert(nome4+nomeB);
exibirInformacoes();
alert(nome5+nomeT);


window.addEventListener("load", function(event){

 const  nome = document.getElementById("procura");

    event.preventDefault();

    alert("Digite o nome do produto:" + nome.valeu);
});

