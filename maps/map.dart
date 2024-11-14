//Em Dart, um Map é uma coleção de pares chave-valor. É útil para armazenar dados em que cada valor está
//associado a uma chave única, permitindo acesso eficiente aos valores com base em suas respectivas chaves.

void main() {
  // Criando um Map de forma literal
  Map<String, String> capitalPorPais = {
    'Brasil': 'Brasília',
    'França': 'Paris',
    'Japão': 'Tóquio'
  };

  // Imprimindo o Map
  print('Capitais: $capitalPorPais');
  // Saída: Capitais: {Brasil: Brasília, França: Paris, Japão: Tóquio}

  // Adicionando um novo par chave-valor
  capitalPorPais['Alemanha'] = 'Berlim';

  // Atualizando o valor de uma chave existente
  capitalPorPais['Brasil'] = 'Rio de Janeiro'; // Isso atualiza para um valor incorreto como exemplo

  // Imprimindo o Map atualizado
  print('Capitais atualizadas: $capitalPorPais');
  // Saída: Capitais atualizadas: {Brasil: Rio de Janeiro, França: Paris, Japão: Tóquio, Alemanha: Berlim}

  // Removendo um par chave-valor
  capitalPorPais.remove('França');

  // Verificando a existência de uma chave
  if (capitalPorPais.containsKey('Japão')) {
    print('A capital do Japão é: ${capitalPorPais['Japão']}');
  }

  // Iterando sobre um Map
  print('Capitais restantes:');
  capitalPorPais.forEach((pais, capital) {
    print('A capital de $pais é $capital');
  });

  // Saída:
  // Capitais restantes:
  // A capital de Brasil é Rio de Janeiro
  // A capital de Japão é Tóquio
  // A capital de Alemanha é Berlim

  //Armazenar dicionários de dados, como configurações de aplicativos (Map<String, dynamic>).

  Map<String, dynamic> paisPorValor = {
    'Brasil' : 1000,
    'França' : 1200,
    'Japão' : 1300,
  };

  print(paisPorValor);

// Conversão das propriedades de uma Classe para um Map
  Pais pais = Pais('A', 'B', 1); 
  var map = pais.toMap();

  print(map);

  Map<String, dynamic> mapaPais = pais.toMap();
  print(mapaPais);


}

class Pais {
  String nome;
  String capital;
  int valor;

  Pais(this.nome, this.capital, this.valor);

  Map<String, dynamic> toMap(){
    return {
      "nome": this.nome,
      "capital": this.capital,
      "valor": this.valor
    };
  }

  // Map<String, dynamic> toMap(){
  //   Map<String, dynamic> paisMap = {};
  //   paisMap["nome"] = this.nome;
  //   paisMap["capital"] = this.capital;
  //   paisMap["valor"] = this.valor;
  //   return paisMap;
  // }
  
}