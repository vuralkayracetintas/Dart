void main() {
  const String bankName = 'Bank of Dart';

  const String user1Name = 'John';

  const double user1Money = 100.000;

  const String user2Name = 'Alice';

  int user2Money = 500;
  user2Money = user2Money - user1Money.toInt();

  // print('User2 Money : $user2Money');

  int totalM = 100;
  print(totalM);
  final int m1 = 20;
  totalM = totalM - m1;
  print(totalM);
  final int m2 = 50;
  totalM = totalM - m2;
  print(totalM);
}
