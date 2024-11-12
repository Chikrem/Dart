void main(){

  // Objeto fruta
  String fruta = 'Banana';
  double peso = 0.5;	
  String cor = 'Amarela';
  String sabor = 'Doce';
  int diasDesdeColheita = 5;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

// Tipos de parâmetros

// Parâmetros posicionais obrigatórios são aqueles que devem ser passados na ordem correta e não podem ser omitidos.
  mostrarMadura1("Uva", 10);

// Parâmetros nomeados opcionais são aqueles que podem ser omitidos e são passados com o nome do parâmetro.	
  mostrarMadura2("Maçã", 3, cor: 'Vermelha');

// Parâmetros com valores padrão são aqueles que possuem um valor padrão e podem ser omitidos.
  mostrarMadura3("Pera", 7);
  mostrarMadura3("Pera", 7, cor: 'Verde');

// Modificador Required é utilizado para garantir que o parâmetro seja passado.
  mostrarMadura4("Laranja", 4, cor: 'Laranja');
}


// Parâmetros posicionais obrigatórios "nome" e "dias"
mostrarMadura1(String nome, int dias) {
  if(dias >= 5){
    print('A fruta $nome está madura');
  }else{
    print('A fruta $nome não está madura');
  }
}

// Parâmetros nomeados opcionais "cor"
mostrarMadura2(String nome, int dias, {String? cor}) {
  if(dias >= 5){
    print('A fruta $nome está madura');
  }else{
    print('A fruta $nome não está madura');
  }

  if (cor != null) {
    print('A cor da fruta é $cor');
  }

}

// Parâmetros "Padrão" de "cor"
mostrarMadura3(String nome, int dias, {String cor = 'Amarela'}) {
  if(dias >= 5){
    print('A fruta $nome está madura');
  }else{
    print('A fruta $nome não está madura');
  }

  print('A cor da fruta é $cor');
}

// Modificador Required de "cor"
mostrarMadura4(String nome, int dias, {required String cor}) {
  if(dias >= 5){
    print('A fruta $nome está madura');
  }else{
    print('A fruta $nome não está madura');
  }

  print('A cor da fruta é $cor');
}

bool funcEstaMadura(int dias){
  if(dias >= 5){
    return true;
  }else{
    return false;
  }
}

