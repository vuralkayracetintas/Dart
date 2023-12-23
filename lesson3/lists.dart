void main() {
  List<int> moneys = [100, 200, 201, 277, 140, 80];

  print('User1 money ${moneys[0]}');

  moneys.add(40);
  moneys.sort();
  moneys.insert(2, 619);
  // print(moneys);

  List<double> customerMoney = List.generate(100, (index) {
    return index + 5;
  });
  print(customerMoney);

  List<int> customerList = [100, 30, 40, 60];
  customerList.sort();
  for (var i = 0; i < customerList.length; i++) {
    print('User Money : ${customerList[i]}');
    if (customerList[i] > 40) {
      print('You are rich');
    } else {
      print('Good bye');
    }
  }
  print(
      '-------------------------------------------------------------------------------------');
  for (var i = customerList.length - 1; i >= 0; i--) {
    print('User Money : ${customerList[i]}');
    if (customerList[i] > 40) {
      print('You are rich');
    } else {
      print('Good bye');
    }
  }
  print(
      '-------------------------------------------------------------------------------------');
}
