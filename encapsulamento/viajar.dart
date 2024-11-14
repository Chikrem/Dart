import 'transporte.dart'; // Importa uma enumeração relacionada a tipos de transporte.

class Viajar {
  Transporte locomocao; // Atributo que representa o tipo de transporte utilizado na viagem.
  int visitas = 0; // Atributo que rastreia o número de vezes que um local específico foi visitado.
  static int _viagens = 0; // Atributo estático que rastreia o número total de viagens realizadas.
  static String test = 'test'; // Atributo estático com uma string de teste (pode ter algum uso em debugging ou validação).

  // Construtor da classe Viajar, que exige um parâmetro de tipo Transporte para inicialização.
  Viajar({required this.locomocao});

  // Método que incrementa o número de visitas e o número total de viagens.
  void visitar() {
    visitas++;
    _viagens++;
    print('Você visitou esse lugar $visitas vezes \n Você já fez um total de $_viagens viagens \n');
  }

  // Getter para acessar o número de viagens.
  int get numeroDeViagens {
    return _viagens;
  }

  // Setter para alterar o número total de viagens.
  void set alterarViagens(int novoValor) {
    if (novoValor < visitas) {
      // Valida se o novo valor é menor que o número de visitas, o que seria incoerente.
      print('O valor de viagens total é menor que o valor de visitas ao local selecionado, isso não faz sentido. Alterando o valor desejado para o valor padrão');
      _viagens = visitas; // Ajusta o valor de `_viagens` para o número de visitas.
    } else {
      _viagens = novoValor; // Atribui o novo valor se for maior ou igual ao número de visitas.
    }
  }

  // Método `aventura()` com uma lógica incorreta de comparação (o tipo de `locomocao` é um `Transporte`, não um `int`).
  void aventura() {
    if (locomocao == 1) {
      print('Estou indo numa Aventura de Carro!');
    } else if (locomocao == 2) {
      print('Estou indo numa Aventura de Carro!');
    } else if (locomocao == 3) {
      print('Estou indo numa Aventura de Carro!');
    } else {
      print('Estou indo numa Aventura!');
    }
  }

  // Método `aventura2()` que usa `switch` para imprimir a aventura correspondente ao tipo de transporte.
  void aventura2() {
    switch (locomocao) {
      case Transporte.carro:
        print('Estou indo numa Aventura de Carro!');
        break;
      case Transporte.bicicleta:
        print('Estou indo numa Aventura de Bike!');
        break;
      case Transporte.onibus:
        print('Estou indo numa Aventura de Busão!');
        break;
      case Transporte.aviao:
        print('Estou indo numa Aventura de Avião!');
        break;
      case Transporte.andando:
        print('Estou indo numa Aventura a Pé!');
        break;
      case Transporte.helicoptero:
        print('Estou indo numa Aventura de Helicóptero!');
        break;
      case Transporte.patins:
        print('Estou indo numa Aventura de Patins!');
        break;
      case Transporte.skate:
        print('Estou indo numa Aventura de Skate!');
        break;
      default:
        {
          print('Estou indo numa Aventura!');
        }
    }
  }
}
