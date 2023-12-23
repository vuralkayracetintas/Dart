void main() {
  int money = 5;

  money += 10;
  money++;
  money--;

  String name = 'John';
  String surname = 'Doe';

  print(name + surname);

  if (name == 'John') {}

  if (name != 'John') {}

  if (name.length > 'John'.length) {}
  if (name.length < 'John'.length) {}
  if (name.length >= 'John'.length) {}
  if (name.length <= 'John'.length) {}

  const int appleMoney = 10;
  const double discount = 2.5;

  int myMoney = 30;

  myMoney = myMoney - (appleMoney ~/ discount);
  print(myMoney);
  print(myMoney % 2 == 0);
}
