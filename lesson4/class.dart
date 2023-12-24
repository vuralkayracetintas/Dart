import 'model/user_model_1.dart';

void main() {
  User user1 = User('John', 100, age: 24, city: 'New York', id: 'jhn23');

  User user2 = User('Alice', 205, id: 'alc23');

  print(user1.name);
  print(user2.money);

  if (user1.isSpecialUser('jhn23')) {
    user1.money += 100;
    print(user1.isNotEmptyId);
    print('User 1 is special , User 1 new money is ${user1.money}');
  } else {
    print('User 1 is not special');
  }

  if (user1.city != null) {
    print('City not found');
  } else {
    if (user1.city == 'New York') {
      print('User 1 lives in New York');
    }
  }
}
