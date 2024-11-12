// Estudando conceitos de orientação a objetos com Dart
void main(){
  // Criando uma classe
  var carro1 = Carro(marca: 'Ford', modelo: 'Fiesta', ano: 2014, cor: 'Preto');
  var carro2 = Carro(marca: 'Chevrolet', modelo: 'Onix', ano: 2018, cor: 'Branco');

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
  String? marca;
  String? modelo;
  int? ano;
  String? cor;

  // Construtor
  Carro({this.marca, this.modelo, this.ano, this.cor});
  
  // Métodos
  void ligar(){
    print('O carro está ligado');
  }
  
  void acelerar(){
    print('O carro está acelerando');
  }
  
  void frear(){
    print('O carro está freando');
  }
  
  void desligar(){
    print('O carro está desligado');
  }
}