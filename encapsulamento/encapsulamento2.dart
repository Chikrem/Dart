import 'pessoa.dart';

void main() {
  Pessoa pessoa = Pessoa('João', 25);

  // Acessando o atributo público diretamente
  print('Nome: ${pessoa.nome}');

  // Acessando o atributo privado por meio do getter
  print('Idade: ${pessoa.getIdade}');

  // Modificando o atributo privado por meio do setter
  pessoa.idade = 30; // Atualiza a idade
  print('Nova idade: ${pessoa.getIdade}');

  // Tentativa de definir uma idade negativa
  pessoa.idade = -5; // Exibe uma mensagem de erro e não altera a idade
}