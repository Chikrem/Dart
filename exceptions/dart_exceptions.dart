import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exception.dart';
import 'models/account.dart';
void main() {
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
  try{
  bool result = bankController.makeTransfer(
      idSender: "Kako", idReceiver: "Ricarth", amount: 700);
      if(result){
        print("Transação concluída com sucesso!");
      };

  } on SenderIdInvalidException catch (e){  // Verificar ID Válido
      print("O ID ${e.idSender} é inválido!");  
  } on ReceiverIdInvalidException catch (e){
      print("O ID ${e.idReceiver} é inválido");
  } on SenderNotAuthenticatedException catch (e){
      print( "Resultado da Autenticação: ${e.idSender} não está autenticado!" );
  } on SenderBalanceLowerThanAmountException catch (e){
      print("Saldo insulficiente! Saldo atual: ${e.amount}");
  } on Exception {
      print("Erro inesperado!");
  }

  // Observando resultado
}
