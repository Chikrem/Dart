// ignore_for_file: unused_local_variable

void main() {
  
  
var idade = 26;   // variável inteira
double altura = 1.86; // variável double
bool geek = true;  // variável booleana
const String nome = 'Carlos Aquino';  // constante
final apelido; // inferência de tipo

apelido = 'Carlim'; // final

bool maiorDeIdade;

// if significa "se" e é utilizado para executar um bloco de código se uma condição for verdadeira. O bloco de código é executado se a condição for verdadeira e ignorado se a condição for falsa.

if(idade>=18){
  maiorDeIdade = true;
}

// else significa "senão" e é utilizado para executar um bloco de código se a condição do if for falsa. O bloco de código é executado se a condição for falsa e ignorado se a condição for verdadeira.

else{
  maiorDeIdade = false;
}

print(maiorDeIdade);

}