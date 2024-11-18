// Em Dart, exceptions são usadas para indicar que ocorreu um erro ou uma condição inesperada durante a execução do programa. Dart fornece uma maneira 
// robusta de lidar com esses erros por meio de um sistema de tratamento de exceções que permite capturar e responder a esses eventos de forma controlada, 
// evitando que o programa falhe inesperadamente.

void main() {
  try {
    // Código que pode lançar uma exceção
    int resultado = 100 ~/ 0; // Tentativa de divisão por zero
  } on IntegerDivisionByZeroException {
    // Captura uma exceção específica
    print('Erro: Divisão por zero não é permitida.');
  } catch (e, stackTrace) {
    // Captura qualquer outra exceção
    print('Erro inesperado: $e');
    print('Stack trace: $stackTrace'); // Útil para depuração
  } finally {
    // Código que sempre é executado, independentemente de ter ocorrido uma exceção
    print('Operação finalizada.');
  }
}
