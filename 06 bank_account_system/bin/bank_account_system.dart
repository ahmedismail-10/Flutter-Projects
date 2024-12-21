import 'dart:io';
import 'BankAccount.dart';

void main() {
  BankAccount account1 = BankAccount('123456', 'Ahmed Ismail', 500.0);
  account1.printAccountInfo();
  account1.deposit(200.0);
  account1.withdraw(100.0);
  account1.printAccountInfo();
}
