void main() {
  int user1Money = 100;
  moneyController(money: user1Money, minValue: 50);

  int user2Money = 40;
  moneyController(money: user2Money, minValue: 50);

  int result = convertToDolar(
    money: 40,
  );
  print(result);

  final int newResult = convertToStandartDolar(100);
  final int newResult2 = convertToStandartDolar(100, dolarIndex: 10);
  final int newResult3 = convertToStandarEuro(money: 200, dolarIndex: 10);

  print(newResult);
  print(newResult2);
  print(newResult3);
}

void moneyController({required int money, required int minValue}) {
  if (money > minValue) {
    print('You have a money');
  } else {
    print('You dont have a money ');
  }
}

int convertToDolar({
  required int money,
}) =>
    money ~/ 13;

// int convertToDolar({required int money, required dolarIndex}) {
//   money ~/ dolarIndex;
// }

int convertToStandartDolar(int money, {int dolarIndex = 14}) =>
    money ~/ dolarIndex;

int convertToStandarEuro({required int money, int dolarIndex = 14}) =>
    money ~/ dolarIndex;
