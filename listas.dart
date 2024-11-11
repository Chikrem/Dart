void main () {

// Declaração
List<String> nomes = ['Carlos', 'Ana', 'João'];

// Acesso
String primeiroNome = nomes[0]; // 'Carlos'

print(primeiroNome);

// Adição
nomes.add('Maria');

// Remoção
nomes.remove('Ana');

print(primeiroNome);

// Iteração
for (String nome in nomes) {
  print(nome);
}

}