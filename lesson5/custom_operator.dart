void main(List<String> args) {
  final money1 = Bank(100, '12');
  final money2 = Bank(300, '12');

  final total = money1 + money2;
  print(total);
  print(money1.toString());
  print(money1 == money2); // moneys id controll
}

// with => use together
class Bank with BankMixin {
  final int money;
  final String id;
  Bank(this.money, this.id);

  int operator +(Bank newBank) {
    return this.money + newBank.money;
  }

  @override
  String toString() {
    return super.toString() + 'vkc';
  }

  bool operator ==(Object object) {
    return object is Bank && object.id == this.id;
  }

  @override
  void sayHello() {
    calculateMoney(money);
    print('Hello, welcome to our bank');
  }
}

mixin BankMixin {
  void sayHello();
  void calculateMoney(int money) {
    print(money);
  }
}
