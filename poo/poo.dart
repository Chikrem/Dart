// Estudando conceitos de orientação a objetos com Dart
import 'dart:math';

void main(){
  // Criando uma classe
  // Classes são modelos que definem as características e comportamentos de um objeto.
  var carro1 = Carro('Ford', 'Fiesta', 2014, 'Preto');
   
  var carro2 = Carro('Chevrolet', 'Cruze', 2018, 'Branco');

  print('Marca: ${carro1.marca}');
  print('Modelo: ${carro1.modelo}');
  print('Ano: ${carro1.ano}');
  print('Cor: ${carro1.cor}');
  
  print('-------------------');
  
  print('Marca: ${carro2.marca}');
  print('Modelo: ${carro2.modelo}');
  print('Ano: ${carro2.ano}');
  print('Cor: ${carro2.cor}');
  
  carro1.ligar();
  carro1.acelerar();
  carro1.frear();
  carro1.desligar();
}

// Criando uma classe
class Carro{
  // Propriedades
  // Propriedades são variáveis que representam as características de um objeto.
  String marca;
  String modelo;
  int ano;
  String cor;
  bool isLigado = false;
  bool isAndando  = false;

  // Construtor
  // Construtor é um método especial que é chamado quando um objeto é instanciado.
  Carro(this.marca, this.modelo, this.ano, this.cor);
  
  // Métodos
  // Métodos são funções que representam as ações de um objeto.
  void ligar(){
    if (this.isLigado == false){
      this.isLigado = true;
      print('O carro está ligado');
    } else {
      print('O carro já está ligado');
    }
  }
  
  void acelerar(){
    print('O carro está acelerando');
  }
  
  void frear(){
    if (this.isAndando == false){
      print('O carro já está parado');
    } else {
      print('O carro está freando');
    }
  }
  
  void desligar(){
    if (this.isLigado == true){
      this.isLigado = false;
      print('O carro está desligado');
    } else {
      print('O carro já está desligado');
    }
  }
}