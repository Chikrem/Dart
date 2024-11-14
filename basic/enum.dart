// Definição de um enum para representar os dias da semana
enum DiaDaSemana {
  segunda,
  terca,
  quarta,
  quinta,
  sexta,
  sabado,
  domingo
}

void main() {
  // Atribuição de um valor do enum a uma variável
  DiaDaSemana hoje = DiaDaSemana.sexta;

  // Impressão do valor do enum
  print('Hoje é: $hoje'); // Saída: Hoje é: DiaDaSemana.sexta

  // Verificando o valor do enum em uma estrutura condicional
  if (hoje == DiaDaSemana.sexta) {
    print('Hoje é sexta-feira, dia de descanso!');
  } else if (hoje == DiaDaSemana.sabado || hoje == DiaDaSemana.domingo) {
    print('É fim de semana!');
  } else {
    print('Hoje é um dia de semana.');
  }

  // Percorrendo todos os valores do enum com a propriedade values
  print('Todos os dias da semana:');
  for (var dia in DiaDaSemana.values) {
    print(dia);
  }

  // Saída esperada:
  // Todos os dias da semana:
  // DiaDaSemana.segunda
  // DiaDaSemana.terca
  // DiaDaSemana.quarta
  // DiaDaSemana.quinta
  // DiaDaSemana.sexta
  // DiaDaSemana.sabado
  // DiaDaSemana.domingo

  // Exibindo o índice do valor atual
  print('O índice de hoje (${hoje.name}) é: ${hoje.index}'); // Saída: O índice de hoje (sexta) é: 4
}