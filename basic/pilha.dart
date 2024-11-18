// -A pilha de execução em Dart é uma estrutura de dados que gerencia a execução de funções e métodos em um programa. Ela funciona como uma pilha tradicional (LIFO – Last In, First Out), onde a última função ou método que entra é o primeiro a sair. Essa pilha é essencial para rastrear a ordem de execução do código e para gerenciar o fluxo de chamadas de funções.


// -Quando uma função é chamada, uma nova entrada (ou frame) é empilhada na pilha de execução. Esse frame contém informações como os parâmetros da função, variáveis locais e o local de retorno na execução do programa.

// -Quando a função termina sua execução, o frame correspondente é removido (desempilhado) da pilha.

// -Se uma função chamada invocar outras funções, novos frames são empilhados à medida que essas funções são chamadas. Quando uma função interna termina, seu frame é removido, e o controle retorna à função anterior na pilha.

void funcA() {
  print('Início de A');
  funcB();
  print('Fim de A');
}

void funcB() {
  print('Início de B');
  funcC();
  print('Fim de B');
}

void funcC() {
  print('Executando C');
  for (var i = 0; i < 10; i++) {
    print(i);
  }
  print('Fim de C');
}

void main() {
  funcA();
}
