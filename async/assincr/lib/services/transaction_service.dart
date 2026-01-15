import 'package:assincr/exceptions/transaction_exceptions.dart';
import 'package:assincr/helpers/helper_taxes.dart';
import 'package:assincr/models/account.dart';
import 'package:assincr/services/account_service.dart';

class TransactionService {
  
  AccountService _accountService = AccountService();

  makeTransaction({
    required String idSender,
    required String idReceiver,
    required double amount,
  }) async {
    List<Account> listAccount = await _accountService.getAll();

    if (listAccount.where((acc) => acc.id == idSender).isEmpty){
      throw SenderNotExistsException();
    }
    
    Account senderAccount =listAccount.firstWhere( //percorrer a lista e coloca o objeto no sender acc
      (acc) => acc.id == idSender,
    );

    if (listAccount.where((acc) => acc.id == idReceiver).isEmpty){
      throw ReceiverNotExistsException();

    }

    Account receiverAccount = listAccount.firstWhere( //percorrer a lista e coloca o objeto no sender acc
      (acc) => acc.id == idReceiver,
    );

    double taxes = calculateTaxesByAccount(
      sender: senderAccount,
      amount: amount
    );

    if (senderAccount.balance < amount + taxes){
      throw InsufficientFundsException();
    }

    senderAccount.balance -= (amount + taxes);
    receiverAccount.balance += amount;

    listAccount[listAccount.indexWhere(
      (acc) => acc.id == senderAccount.id,
    )] = senderAccount;
  }
}