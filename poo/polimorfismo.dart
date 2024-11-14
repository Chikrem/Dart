// Final
// Como funciona o polimorfismo em Dart
// Polimorfismo é um conceito que permite que objetos de diferentes classes sejam tratados de maneira uniforme. Isso significa que um objeto de uma classe filha pode ser tratado como um objeto da classe pai.
//
// Para implementar o polimorfismo em Dart, você pode usar classes abstratas e métodos abstratos.
//
// Implementação do polimorfismo
void main() {
  // Cria uma instância da classe Citricas
  Citricas laranja = Citricas('Laranja', 100, 'Laranja', 20, 0.5);
  laranja.separarIngredientes();
  laranja.fazerMassa();
  laranja.assar();

  // Cria uma instância da classe Nozes
  Nozes noz = Nozes('Noz', 50, 'Marrom', 10, 0.3);
  noz.separarIngredientes();
  noz.fazerMassa();
  noz.assar();
}

// Função que calcula quantos dias faltam para a fruta amadurecer
int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = diasParaMadura - dias;
  return quantosDiasFaltam;
}

// Classe abstrata Bolo que define métodos abstratos
abstract class Bolo {
  void separarIngredientes();
  void fazerMassa();
  void assar();
}

// Classe Alimento que representa um alimento genérico
class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  // Método para imprimir informações sobre o alimento
  void printAlimento() {
    print("Este/a $nome pesa $peso gramas e é $cor.");
  }
}

// Embora os objetos Citricas e Nozes sejam de classes diferentes, ambos podem ser tratados de maneira uniforme como objetos do tipo Bolo. As operações de separarIngredientes(), fazerMassa(), e assar() podem ser chamadas sem se preocupar com a classe específica do objeto.
// O método fazerMassa() foi sobrescrito nas subclasses Citricas e Nozes para personalizar o comportamento, enquanto ainda respeita a estrutura geral definida pela classe Fruta (e indiretamente pela interface Bolo).

// Classe Fruta que herda de Alimento e implementa a interface Bolo
class Fruta extends Alimento implements Bolo {
  int diaDesdeColheita;
  bool? isMadura;

  Fruta(String nome, double peso, String cor, this.diaDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  // Método para fazer suco da fruta
  void fazerSuco() {
    print("Você fez um belo suco de $nome");
  }

  @override
  void separarIngredientes() {
    print("Catar a fruta");
  }

  @override
  void fazerMassa() {
    print("Mistura, mistura.");
  }

  @override
  void assar() {
    print("Por no forno!");
  }
}

// Classe Legume que herda de Alimento e implementa a interface Bolo
class Legume extends Alimento implements Bolo {
  bool isPrecisaCozinhar;

  Legume(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  // Método para cozinhar o legume
  void cozinhar() {
    (isPrecisaCozinhar)
        ? print("Pronto, o $nome está cozinhado!")
        : print("Nem precisou cozinhar");
  }

  @override
  void assar() {
    // TODO: implement assar
  }

  @override
  void fazerMassa() {
    // TODO: implement fazerMassa
  }

  @override
  void separarIngredientes() {
    // TODO: implement separarIngredientes
  }
}

// Classe Citricas que herda de Fruta
class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, int diaDesdeColheita,
      this.nivelAzedo)
      : super(nome, peso, cor, diaDesdeColheita);

  // Método para verificar se existe refrigerante da fruta cítrica
  void existeRefri(bool existe) {
    (existe)
        ? print("Existe refri de $nome")
        : print("Não existe refri de $nome");
  }

  @override
  void fazerMassa() {
    print("Tirar sementes");
    super.fazerMassa();
  }
}

// Classe Nozes que herda de Fruta
class Nozes extends Fruta {
  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor, int diaDesdeColheita,
      this.porcentagemOleoNatural)
      : super(nome, peso, cor, diaDesdeColheita);

  @override
  void fazerMassa() {
    print("Tirar a casca");
    super.fazerMassa();
  }
}