void main() {
  int money = 15;

  String userName = 'John';

  if (money > 10) {
    print('You are rich');
  } else {
    print('You are poor');
  }

  money = money - 10;
  if (money > 10) {
    print('You  are soo rich');
  } else {
    print('You are poor');
  }

  int newCustomerMoney = 10;
  const int bankingCost = 5;
  const int bankingCostGeneral = 20;

  if (newCustomerMoney > bankingCost) {
    print('Welcome to bank');
    newCustomerMoney = newCustomerMoney - bankingCostGeneral;
  } else if (newCustomerMoney > 0) {
    print('You don\'t have number');
  } else {
    print('pay your debt');
  }

  String user1Comp = 'User1X';
  String user2Comp = 'User2Copmx';
  String user3Comp = 'User3';
  String user4Comp = 'User';
  String user5Comp = 'Us2';

  const int minComp = 3;

  String res = '';

  if (user1Comp.length > minComp) {
    res += user1Comp;
  }
  if (user2Comp.length > minComp) {
    res += user2Comp;
  }
  if (user3Comp.length > minComp) {
    res += user3Comp;
  }
  if (user4Comp.length > minComp) {
    res += user4Comp;
  }
  if (user5Comp.length > minComp) {
    res += user5Comp;
  }

  if (res.isEmpty) {
    //res.length == 0
    print('no name ');
  } else {
    print(res);
  }
}
