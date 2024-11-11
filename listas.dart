void main () {

// Declaração
List<String> nomes = ['Carlos', 'Ana', 'João'];

// Acesso
String primeiroNome = nomes[0]; // 'Carlos'

//print(primeiroNome);

// Adição
nomes.add('Maria');

// Remoção
nomes.remove('Ana');

//print(primeiroNome);

// Iteração
for (String nome in nomes) {
  //print(nome);
  }

////////////////////////////////////////

var idade = 26;   // variável inteira
double altura = 1.86; // variável double
bool geek = true;  // variável booleana
const String nome = 'Carlos Aquino';  // constante
final apelido; // inferência de tipo

apelido = 'Carlim'; // final

// Lista Dinâmica

List<dynamic> listaDinamica = [idade, altura, nome, apelido, geek]; 

//print(listaDinamica);

String frase = 'Eu sou ${listaDinamica[3]} \n'
        'mas meu nome completo é: ${listaDinamica[2]}, \n'
        'eu me considero geek? ${listaDinamica[4]}. \n'
        'Eu tenho ${listaDinamica[1]} metros de altura e \n'
        '${listaDinamica[0]} anos de idade';

print(frase);

}