void main(List<String> args) {
  final user = _User(name: 'john ', age: 12);

  // if ((user.age ?? 0) < 10) {}

  if (user.age is int) {
    if (user.age! < 18) {
      print('younger than 18 years old');
      user.updateMoneyWithString('Dolar');
    } else {
      user.updateMoneyWithNumber(15);
    }
  }

  final newType = user.moneyType is String ? (user.moneyType as String) : '';

  print(newType + ' ad');
}

class _User {
  final String name;
  int? age;

  dynamic moneyType;

  _User({required this.name, this.age});

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    moneyType = number;
  }
}
