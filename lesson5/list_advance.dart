// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:collection';

void main(List<String> args) {
  final carItems = [
    CarModel(
        model: CarModels.bmw, name: 'X5', money: 123123, isSecondHand: false),
    CarModel(model: CarModels.mercedes, name: 'a180', money: 123213),
    CarModel(model: CarModels.audi, name: 'A6', money: 1943234),
    CarModel(
        model: CarModels.ford,
        name: 'fiesta',
        money: 19223434,
        isSecondHand: false),
    CarModel(model: CarModels.wolksvagen, name: 'golf', money: 231322),
  ];

  final resultCount = carItems.where((element) => element.isSecondHand).length;
  print(resultCount);

// add new var
  final newCar = CarModel(model: CarModels.audi, name: 'A6', money: 1943234);
  final isHaveCar = carItems.contains(newCar);
//new car controll
  if (isHaveCar) {
    print('have car');
  } else {
    print('not have car');
  }

// bmw money >20000
  final resultBmwMore20 = carItems
      .where(
          (element) => element.model == CarModels.bmw && element.money > 20000)
      .join();

  print(resultBmwMore20);

  final carNames = carItems.map((e) => e.name).join(',');
  final carNames2 = carItems.map((e) => e.getCarModelName());

  print(carNames);

  print(carNames2);
//! sorun oldugu zaman kontol icin kullan
  try {
    final mercedesCar =
        carItems.singleWhere((element) => element.model == CarModels.mercedes);
    //! singleWhere kullaniminda data yoksa hata verir
    print(mercedesCar);
  } catch (e) {
    print(e);
    print('no car');
  }

  final index = carItems.indexOf(newCar);
  print(index);

  carItems.add(CarModel(
      model: CarModels.mercedes,
      name: 'G Class',
      money: 213813123)); // add new car

  carItems.sort((first, second) =>
      first.money.compareTo(second.money)); // sort small to big
  print(carItems);

  final users = carItems.expand((element) => element.users).toList();

  final _mercedes =
      CarModel(model: CarModels.mercedes, name: 'E Class', money: 12323);

  carItems.add(_mercedes);

  carItems.remove(_mercedes);

  carItems.removeWhere(
      (element) => element.model == CarModels.bmw || element.money == 212332);
  calculateToUser(carItems);
  print(carItems);
}

void calculateToUser(List<CarModel> items) {
  final _items = [...items.toList()];
  final newItems = _items.map((e) {
    return CarModel(
        model: e.model == CarModels.bmw ? CarModels.audi : e.model,
        name: e.name,
        money: e.money);
  }).toList();
  print(newItems);
}

class CarModel {
  CarModels model;
  final String name;
  final double money;
  final List<String> users = [];
  String? city;
  bool isSecondHand;
  CarModel({
    required this.model,
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand = true,
  });

  @override
  bool operator ==(covariant CarModel other) {
    if (identical(this, other)) return true;

    return other.model == model &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return model.hashCode ^
        name.hashCode ^
        money.hashCode ^
        city.hashCode ^
        isSecondHand.hashCode;
  }

  @override
  String toString() {
    return '$name - $money';
  }

  @override
  String getCarModelName() {
    return "Model ${model.name} ,name : $name";
  }
}

enum CarModels { bmw, mercedes, audi, ford, wolksvagen }
