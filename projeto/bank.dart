import 'dart:ffi';
import 'dart:math';

import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exception.dart';
import 'models/account.dart';

void testingNullSafety(){
  Account? myAccount;

  //Simulando uma comunicação externa. O dado pode ou não chegar. Se não chegar, a conta será Null
  Random rng = Random();

  int randomNumber = rng.nextInt(10);

  if (randomNumber >= 5){
    myAccount = Account(name: "Conta Teste", balance: 1000, isAuthenticated: true);
  }

  print(myAccount.runtimeType);
  //print(myAccount!.balance);  // Se cair no caso nulo, gera o erro.

  // if (myAccount != null) {
  //   print(myAccount.balance);
  // } else {
  //   print("Conta nula!");
  // }

  print(myAccount != null ? myAccount.balance : "Conta nula!");

  print(myAccount?.balance);

}

void main() {

  testingNullSafety();

  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência
  try {
    bankController.makeTransfer(
        idSender: "Kako", idReceiver: "Ricarth", amount: 200);


    print("Transação concluída com sucesso");
  } on SenderIdInvalidException catch (e) {
    print(e.message);
  } on ReceiverIdInvalidException catch (e) {
    print(e);
  } on SenderNotAuthenticatedException catch (e) {
    print(e);
  } on ReceiverNotAuthenticatedException catch (e) {
    print(e);
  } on SenderBalanceLowerThanAmountException catch (e) {
    print(e);
  } catch (e) {
    print("Erro desconhecido.");
  }
}
