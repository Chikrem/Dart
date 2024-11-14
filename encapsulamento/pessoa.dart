class Pessoa {
  // Atributo público
  String nome;

  // Atributo privado (não pode ser acessado diretamente de fora desta classe)
  int _idade;

  // Construtor
  Pessoa(this.nome, this._idade);

  // Getter público para acessar o atributo privado _idade
  int get getIdade{
    return _idade;
  }

  // Setter público para modificar o atributo privado _idade com uma validação
  set idade(int novaIdade) {
    if (novaIdade >= 0) {
      _idade = novaIdade;
    } else {
      print('Idade não pode ser negativa');
    }
  }
}