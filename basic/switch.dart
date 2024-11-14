// Definição de um enum para representar as estações do ano
enum EstacaoDoAno {
  primavera,
  verao,
  outono,
  inverno
}

void main() {
  // Atribuindo um valor do enum a uma variável
  EstacaoDoAno estacaoAtual = EstacaoDoAno.outono;

  // Usando switch para lidar com diferentes valores do enum
  switch (estacaoAtual) {
    case EstacaoDoAno.primavera:
      print('É primavera! Flores estão por toda parte.');
      break;
    case EstacaoDoAno.verao:
      print('É verão! Hora de ir à praia e se refrescar.');
      break;
    case EstacaoDoAno.outono:
      print('É outono! As folhas estão caindo.');
      break;
    case EstacaoDoAno.inverno:
      print('É inverno! Está frio e pode até nevar.');
      break;
  }

  // Resultado esperado se a estacaoAtual for outono:
  // É outono! As folhas estão caindo.
}
