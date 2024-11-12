void main(){

  /* for significa "para" e é utilizado quando sabemos quantas vezes queremos repetir um bloco de código. O for é composto por três partes: a inicialização, a condição e o incremento. A inicialização é executada uma vez, a condição é avaliada antes de cada repetição e o incremento é executado após cada repetição. */

  // for loop
  for(int i = 100; i > 0; i = i-10){
    print('Concluí $i voltas');
  }

  /* Começa comparando a nossa energia, ou seja, ele avalia se a energia>0 e, caso seja, executa o código. Depois da execução, o código retorna para o começo do while e compara, novamente, se energia>0 e assim por diante. */

  // while loop
  int energia = 100;
  // enquanto a energia for maior que 0, o loop continua
  while(energia>0){
    print('$energia - Mais uma Repetição');
    energia = energia - 10;
  }

  /* Demos a primeira volta, tiramos a energia e, só então, comparamos se energia>0 para descobrir se podemos realizar outra volta. Isso altera minimamente o nosso código, mas pode facilitar nossa escrita. */

  // do while loop 
  do{
    print('Energia: $energia');
    energia = energia + 10;
  } // enquanto a energia for menor que 100, o loop continua 
  while(energia < 100);

  /* while(){} é significativo quando não temos certeza de quantas voltas precisamos. Além disso, podemos contar as voltas antes de executarmos a nossa ação, com o while(){}, ou depois de executarmos a nossa ação, com do{}while(). */

  /* O break e continue são comandos para controlar o fluxo do loop. O break interrompe o loop e o continue pula a iteração atual e vai para a próxima. O  continue é mais utilizado em loops for, mas pode ser utilizado em qualquer loop. */

  // break e continue
    while (energia > 0) {
    print('$energia - Mais uma Repetição');
    energia -= 10;
  
    if (energia == 50) {
      print('Energia chegou a 50, saindo do loop.');
      break; // Sai do loop quando a energia é igual a 50
    }
  }

    for (int i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      continue; // Pula a iteração atual se i for par
    }
    print('Número ímpar: $i');
  }

  // break + continue

    while (energia > 0) {
    energia -= 10;

    if (energia == 50) {
      print('Energia chegou a 50, saindo do loop.');
      break; // Sai do loop quando a energia é igual a 50
    }

    if (energia % 20 == 0) {
      print('Energia é múltipla de 20, pulando esta iteração.');
      continue; // Pula a iteração atual se a energia for múltipla de 20
    }

    print('Energia: $energia');
  }

}