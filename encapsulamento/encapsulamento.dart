
  //  -Encapsular:
  //    Quando queremos impedir que as informações de dentro da nossa classe sejam acessadas
  //  facilmente, devemos começar a privatizar nossos parametros e métodos. A conduta de privatização
  //  facilita a manutenção do seu código e impede que informações delicadas sejam manipuladas
  //  levianamente.
  //  -Getter:
  //    Simplesmente Pegar os dados da informação que não é acessível por fora.
  //  (habilitar a ação de pegar algo que não é seu)
  //  -Setter:
  //    Simplesmente Alterar a informação que não é alterável por fora.
  //  (mudar valores de algo que não é seu)

import 'transporte.dart';
import 'viajar.dart';

void main(List<String> arguments) {
  //versão do Dart -> 2.14.0

  Viajar jalapao = Viajar(locomocao: Transporte.carro);
  jalapao.aventura(); // codigo sem enum
  jalapao.aventura2(); // codigo com enum

  List<String> destinos = [
    'Jalapão',
    'Chapada dos Veadeiros',
    'João Pessoa',
    'Chapada dos Veadeiros'
  ];
  print(destinos);

  Set destinosVisitados = <String>{ // se ficar curto adicionar elementos no Set.
    'Rio de Janeiro',
    'Chapada dos Veadeiros',
    'São Paulo',
    'Chapada dos Veadeiros',
  };
  print(destinosVisitados);

  Set destinosDesejados = <String>{
    'Jalapão',
    'Califórnia',
    'Gramado',
    'Chapada Diamantina',
    'São Paulo'
  };
  print(destinosDesejados.intersection(destinosVisitados));

  //Map Literal
  Map<String, String> motivoMap = { // se ficar curto adicionar Elementos no Map
    'Jalapão': 'Natureza',
    'Califórnia': 'Arte',
    'Gramado': 'Chocolate',
    'Chapada Diamantina': 'Cachoeiras',
    'São Paulo': 'Compras',
  };
  print(motivoMap);
  //Map Contrutor
  Map<String, dynamic> precoMap = {
    'Jalapão': 2380.00,
    'Califórnia': 'MUITO CARO',
    'Gramado': 1200,
    'Chapada Diamantina': 600,
    'São Paulo': 'Barato',
  };
  print(precoMap);

// Variaveis Dynamic
  var precoX = 1;// variavel do tipo num( int ou double)
  print(precoX.runtimeType);// prova Real
  // x = "frase"; -> vai brigar com a gente porque não podemos alterar a tipagem.


  dynamic precoY; // não sabe o tipo
  precoY = 1; // agora é um int
  print(precoY.runtimeType);
  precoY ='frase'; // agora é uma String
  print(precoY.runtimeType);


  //Variáveis Static
  jalapao.visitar();
  jalapao.visitar();
  jalapao.visitar();
  //mas e se eu for pra outro lugar?
  Viajar chapada = Viajar(locomocao: Transporte.bicicleta);
  chapada.visitar();
  chapada.visitar();



  //Agora eu quero mexer diretamente no valor da minha quantidade de visitas
  chapada.visitas = 20;
  print(chapada.visitas);

  print(jalapao.numeroDeViagens) ; //Agora podemos acessar nosso valor estatico pelo objeto instanciado(criado)

  //mas ainda não podemos alterar, para isso devemos criar o Set.
jalapao.alterarViagens = 200;
print(jalapao.numeroDeViagens);

}




