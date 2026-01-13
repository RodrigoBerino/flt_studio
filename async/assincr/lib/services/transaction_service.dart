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
    
    Account senderAccount =listAccount.firstWhere( //percorrer a lista e coloca o objeto no sender acc
      (acc) => acc.id == idSender,
    );

    Account receiverAccount = listAccount.firstWhere( //percorrer a lista e coloca o objeto no sender acc
      (acc) => acc.id == idReceiver,
    );


  }
}