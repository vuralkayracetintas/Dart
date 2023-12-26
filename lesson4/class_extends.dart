void main() {
  final userNormal = User('x', 100);
  final userBank = BankUser('y', 200, 123);
  final userSpecial = SpecialUser('h', 1023, 2351, 10);

  userNormal.sayMoneyWithCompanyName();
  userBank.sayMoneyWithCompanyName();
  userSpecial.sayMoneyWithCompanyName();

  print(userSpecial.calculateMoney);
}

abstract class IUser {
  final String name;
  final int money;

  IUser(this.name, this.money);

  void sayMoneyWithCompanyName() {
    print('Hello your $name , your money is $money');
  }
}

class User extends IUser {
  final String name;
  final int money;

  User(this.name, this.money) : super(name, money);
}

class BankUser extends IUser {
  final int bankingCode;

  BankUser(String name, int money, this.bankingCode) : super(name, money);
}

class SpecialUser extends IUser {
  final int bankingCode;
  late final int _disccount;

  SpecialUser(String name, int money, this.bankingCode, int disccount)
      : super(name, money) {
    _disccount = disccount;
  }

  int get calculateMoney => money - (money ~/ _disccount);
}
