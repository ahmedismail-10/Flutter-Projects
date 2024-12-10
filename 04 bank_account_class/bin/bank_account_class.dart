import 'dart:io';

void main() {
  BankAccount account = BankAccount(1000.0);
  account.deposit(500.0);
  account.withdraw(200.0);
  print('Current balance: ${account.checkBalance()}');
}

class BankAccount {
  double balance = 0;

  BankAccount(double balance) {
    this.balance = balance;
    print('Initial balance $balance');
  }

  void deposit(double amount) {
    balance = balance + amount;
    print('$amount added successfully.');
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance = balance - amount;
      print('$amount successfully withdrawn.');
    } else {
      print('There is not enough balance.');
    }
  }

  double checkBalance() {
    return balance;
  }
}
