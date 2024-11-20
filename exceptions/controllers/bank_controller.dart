import '../exceptions/bank_controller_exception.dart';
import '../models/account.dart';

class BankController {

  final Map<String, Account> _database = {};

  // Adiciona objeto tipo Account no array de contas
  addAccount({required String id, required Account account}) {
    _database[id] = account;
  }

  // Verifica se existe um id no Array de contas
  bool verifyId(String id) {
    return _database.containsKey(id);
  }

  bool makeTransfer({required String idSender, required String idReceiver, required double amount}){
    
    Account accountSender = _database[idSender]!;
    Account accountReceiver = _database[idReceiver]!;

    // Verificar se ID de remetente é válido
    if (!verifyId(idSender)) {
      // return false;
      throw SenderIdInvalidException(idSender: idSender);
    }

    // Verificar se ID de destinatário é válido
    if (!verifyId(idReceiver)) {
      // return false;
      throw ReceiverIdInvalidException(idReceiver: idReceiver);
    }

    // Verificar se o remetente está autenticado
    if (!accountSender.isAuthenticated) {
      // return false;
      throw SenderNotAuthenticatedException(idSender: idSender);
    }

    // Verificar se o remetente possui saldo suficiente
    if (accountSender.balance < amount) {
      // return false;
      throw SenderBalanceLowerThanAmountException(amount: amount);
    }

    // Se tudo estiver certo, efetivar transação
    accountSender.balance -= amount;
    accountReceiver.balance += amount;

    return true;
  }

}
