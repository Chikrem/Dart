// Como funciona a herança em Dart
// Herança é um conceito que permite que uma classe herde as características e comportamentos de outra classe.
// 

// Para herdar uma classe de outra, você deve adicionar o nome da classe pai após a palavra-chave extends.
// 

// // Herança
class Animal {
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
}

// A classe Cachorro herda da classe Animal.
class Cachorro extends Animal {

  // A classe Cachorro possui uma propriedade adicional chamada raça.
  String raca;
  
  // : super(cor, nome, idade): Chama o construtor da superclasse (classe pai) com os parâmetros cor, nome e idade. Isso é necessário para inicializar a parte da instância que pertence à superclasse. 

  Cachorro(String cor, String nome, int idade, String this.raca) : super(cor, nome, idade);

  // A classe Cachorro possui um método adicional chamado latir().
  void latir(){
    print('O $nome está latindo');
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
  cachorro.latir();
}

// Neste exemplo, a classe Cachorro herda as características e comportamentos da classe Animal.

// A classe Cachorro possui um construtor que chama o construtor da classe