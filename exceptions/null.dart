
// O Null Safety é um recurso introduzido no Dart 2.12 que permite escrever 
// códigos mais seguros, prevenindo erros relacionados ao uso de valores 
// nulos (null). Esses erros, conhecidos como Null Reference Exceptions, são 
// uma das causas mais comuns de falhas em linguagens de programação.

// Com o Null Safety, o Dart diferencia entre tipos que podem ser nulos 
// (nullable) e tipos que não podem ser nulos (non-nullable) diretamente no 
// sistema de tipos.
void main(){

// Por padrão, variáveis em Dart não podem conter o valor null.
// Isso reduz significativamente o risco de acessar métodos ou propriedades em um valor nulo.

int x = 10;  // Sempre conterá um valor
//x = null;    // Erro: o tipo 'int' não permite valores nulos

}

void main2(){

// Para permitir que uma variável aceite o valor null, você deve adicionar 
// um ? ao tipo da variável.

int? x = null;  // x pode conter 'null'

}

void main3(){

  // !(Non-Null Assertion): Diz ao Dart que você tem certeza de que o valor 
  // não é nulo. Usar isso em valores nulos causa uma exceção em tempo de 
  // execução.

  int? x = 10;
  print(x! + 5);  // Funciona, pois x não é nulo

  // ??(Operador de Coalescência): Retorna um valor padrão caso a variável seja nula.

  print(x ?? 0);  // Retorna 0 se x for nulo

  // ?(Operador de Acesso Seguro): Evita acessar membros de um objeto nulo

  String? nome;
  print(nome?.length);  // Retorna 'null' ao invés de lançar uma exceção
}


void main4(){

  // Usado para variáveis que serão inicializadas mais tarde, mas que o programador garante 
  // que não serão acessadas antes de serem atribuídas.

  late String nome;
  nome = "Dart";
  print(nome);  // Funciona
}