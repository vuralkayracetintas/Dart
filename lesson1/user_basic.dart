void main() {
  int userMoney = 25;
  String userName = 'John';
  userMoney = userMoney + 5;

  print('Hello $userName, your money is $userMoney');

  userMoney -= 10;

  print('Your new money is $userMoney');

  // userMoney = (userMoney / 2).toInt();
  userMoney ~/= 3;
  print(userMoney);

  double user2Money = 12.5;
  user2Money = user2Money / 2;
  print('User2 money is $user2Money ');

  String user3 = 'Alice';
  double user3Money = 30.0;
  user3Money /= 20;
  print('Helloe $user3, your money is $user3Money');
}
