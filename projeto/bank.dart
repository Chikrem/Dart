import 'dart:ffi';
import 'dart:math';

import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exception.dart';
import 'models/account.dart';

void testingNullSafety(){
  Account? myAccount = Account(name: "Conta Teste", balance: 1000, isAuthenticated: true);;

  //Simulando uma comunicação externa. O dado pode ou não chegar. Se não chegar, a conta será Null
  Random rng = Random();

  int randomNumber = rng.nextInt(10);

  if (randomNumber <= 5){
    myAccount. createdAt = DateTime.now();
  }

  print(myAccount.runtimeType);
  print(myAccount.createdAt);
  print(myAccount.createdAt?.day); // CreatedAt pode cair nulo

  //print(myAccount!.balance);  // Se cair no caso nulo, gera o erro.
  //print(myAccount.createdAt!.day); //  Se cair no caso nulo, gera o erro.

  // if (myAccount != null) {   // Teste com IF-ELSE
  //   print(myAccount.balance);
  //   if (myAccount.createdAt != null){
  //     print(myAccount.createdAt.day);  // Gera erro mesmo com If
  //   }
  // } else {
  //   print("Conta nula!");
  // }

    if (myAccount != null) {   // Teste com IF-ELSE
    print(myAccount.balance);
    if (myAccount.createdAt != null){
      print(myAccount.createdAt!.day);  // Uso com segurança do ! pois é garantido não nulo com o IF
    }
  } else {
    print("Conta nula!");
  }

  print(myAccount != null ? myAccount.balance : "Conta nula!"); // Teste Operador Ternário


  print(myAccount?.balance);  // Chamada segura

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
