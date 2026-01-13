import '../models/account.dart';

double calculateTaxesByAccount({
  required Account sender,
  required double amount,
}) {
  if (amount < 5000) return 0;

  if (sender.accountType.toUpperCase() == 'AMBROSIA') {
    
  }
}
