// Os Sets em Dart são úteis quando você precisa de uma coleção de elementos exclusivos, sem importar a ordem.

void main() {
  // Criando um Set de números inteiros
  Set<int> numeros = {1, 2, 3, 4, 5};

  // Adicionando elementos ao Set
  numeros.add(6);
  numeros.add(3); // Este elemento não será adicionado porque 3 já existe no Set

  print('Números no Set: $numeros'); // Saída: Números no Set: {1, 2, 3, 4, 5, 6}

  // Removendo um elemento
  numeros.remove(2);
  print('Números após remoção: $numeros'); // Saída: Números após remoção: {1, 3, 4, 5, 6}

  // Verificando se um elemento está no Set
  if (numeros.contains(4)) {
    print('O número 4 está no Set.');
  } else {
    print('O número 4 não está no Set.');
  }

  // União de dois Sets
  Set<int> outrosNumeros = {5, 6, 7, 8};
  Set<int> uniao = numeros.union(outrosNumeros);
  print('União dos Sets: $uniao'); // Saída: União dos Sets: {1, 3, 4, 5, 6, 7, 8}

  // Interseção de dois Sets
  Set<int> intersecao = numeros.intersection(outrosNumeros);
  print('Interseção dos Sets: $intersecao'); // Saída: Interseção dos Sets: {5, 6}

  // Diferença entre dois Sets
  Set<int> diferenca = numeros.difference(outrosNumeros);
  print('Diferença dos Sets: $diferenca'); // Saída: Diferença dos Sets: {1, 3, 4}
}
