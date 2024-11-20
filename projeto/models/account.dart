class Account {
  String name;
  double balance;
  bool isAuthenticated;

  Account({
    required this.name,
    required this.balance,
    required this.isAuthenticated,
  })  : assert(name.isNotEmpty, 'Empty Name'), // Verifica que o nome não é vazio.
        assert(balance >= 0, 'Negative Balance'); // Garante que o saldo não é negativo.


  editBalance({required value}) {
    balance = balance + value;
  }
}
