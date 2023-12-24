void main() {
  Map<String, int> users = {
    'John': 100,
    'Doe': 200,
    'Smith': 300,
  };

  print('John Money : ${users['John']}');

  for (var items in users.keys) {
    print('User : ${items} , Money : ${users[items]}');
  }
  print('-----------------------------------');
  for (var i = 0; i < users.length; i++) {
    print(
        'User : ${users.keys.elementAt(i)}, Money : ${users.values.elementAt(i)}');
  }

  print('-----------------------------------');

  Map<String, List<int>> xBank = {
    'John': [100, 200, 300],
    'Doe': [200, 300, 400],
    'Smith': [300, 400, 500],
  };

  for (var item in xBank.keys) {
    for (var userMoney in xBank[item]!) {
      if (userMoney > 150) {
        print('User : ${item}, Money : ${userMoney}, => You are rich');
      }
    }
  }
  print('-----------------------------------');

  for (var name in xBank.keys) {
    int result = 0;

    for (var money in xBank[name]!) {
      result += money;
    }

    print('${name} your total money is  : => ${result}');
    if (result > 800) {
      print('You are rich');
    } else {
      print('Good bye');
    }
  }
}
