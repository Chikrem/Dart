// Classes abstratas são classes que não podem ser instanciadas diretamente. Elas são usadas para definir uma interface para outras classes que devem implementar seus métodos e propriedades.
//
// Para criar uma classe abstrata, você deve adicionar a palavra-chave abstract antes da palavra-chave class.
//
// Classes abstratas
abstract class Animal {
  String cor;
  String nome;
  int idade;

  Animal(this.cor, this.nome, this.idade);

  void dormir(){
    print('O $nome está dormindo');
  }

  void comer(){
    print('O $nome está comendo');
  }

  // Métodos abstratos
  void fazerBarulho();
}

// A classe Cachorro implementa a classe abstrata Animal.
class Cachorro extends Animal {

  String raca;

  Cachorro(String cor, String nome, int idade, String this.raca) : super(cor, nome, idade);

  void latir(){
    print('O $nome está latindo');
  }

  // Implementação do método abstrato fazerBarulho().
  void fazerBarulho(){
    latir();
  }
}

void main(){
  Cachorro cachorro = Cachorro('Marrom', 'Rex', 3, 'Bulldog');

  print('Cor: ${cachorro.cor}');
  print('Nome: ${cachorro.nome}');
  print('Idade: ${cachorro.idade}');
  print('Raça: ${cachorro.raca}');

  cachorro.dormir();
  cachorro.comer();
  cachorro.fazerBarulho();
}

// Neste exemplo, a classe Animal é uma classe abstrata que define um método abstrato fazerBarulho(). A classe Cachorro implementa este método e fornece a sua própria implementação. A classe Cachorro também herda os métodos dormir() e comer() da classe Animal.
//