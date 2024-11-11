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
  print(nome);
  }

////////////////////////////////////////

// Lista Dinâmica

List<dynamic> listaDinamica = [26, 'Carlim', 'Carlos Aquino', 1.86, true];

print(listaDinamica);

String frase = 'Eu sou ${listaDinamica[1]} \n'
    'mas meu nome completo é: ${listaDinamica[2]}, \n'
    'eu me considero geek? ${listaDinamica[4]}. \n'
    'Eu tenho ${listaDinamica[3]} metros de altura e \n'
    '${listaDinamica[0]} anos de idade';

print(frase);

}