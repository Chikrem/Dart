void main() {
  // Funções com Dart
  // Funções são blocos de código que podem ser chamados e executados em qualquer parte do código.
  // Funções são utilizadas para executar tarefas específicas.
  // Funções podem receber parâmetros e retornar valores.

  // Função sem parâmetros e sem retorno
  void mensagem() {
    print('Olá, Mundo!');
  }

  mensagem();

  // Função com parâmetros e sem retorno
  void saudacao(String nome) {
    print('Olá, $nome!');
  }

  saudacao('Carlos');

  // Função sem parâmetros e com retorno
  String mensagem2() {
    return 'Olá, Mundo!';
  }

  print(mensagem2());

  // Função com parâmetros e com retorno
  String saudacao2(String nome) {
    return 'Olá, $nome!';
  }

  print(saudacao2('Carlos'));
}