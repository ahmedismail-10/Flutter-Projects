class BankAccount {
  String? _accountNumber;
  String? _holderName;
  double _balance = 0;

  BankAccount(String accountNumber, String holderName, double balance) {
    this._accountNumber = accountNumber;
    this._holderName = holderName;
    this._balance = balance;
  }

  String? getAccountNumber() {
    return _accountNumber;
  }

  String? getHolderName() {
    return _holderName;
  }

  void setHolderName(String holderName) {
    this._holderName = holderName;
  }

  double getBalance() {
    return _balance;
  }

  void setBalance(double amount) {
    if (amount > 0) {
      _balance = amount;
    }
  }

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('$amount Deposit successfully.');
    }
  }

  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      print('$amount successfully withdrawn.');
    } else {
      print('Your balance is insufficient.');
    }
  }

  void printAccountInfo() {
    print('Account number: $_accountNumber');
    print('Holder name: $_holderName');
    print('Balance: $_balance');
  }
}
