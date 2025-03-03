class BankAccount {
  String _accountNumber;
  double _balance;
  
  BankAccount(this._accountNumber, this._balance);

  void deposit(double amount) {
    if (amount > 0) {
      _balance = _balance + amount;
    }
  }
  
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance = _balance - amount;
    }
  }
  
  void getBalance() {
    return print('Карта: $_accountNumber, баланс: $_balance');
  }
}

void main() {
  var bankaccount = BankAccount('123', 0);
  bankaccount.deposit(100);
  bankaccount.withdraw(10);
  bankaccount.getBalance();
}
