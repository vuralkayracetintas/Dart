// ignore_for_file: public_member_api_docs, sort_constructors_first
void main() {
  // final newProduct = Product.money;

  calculateNewMoney(Product.money ?? 0);
  productNameChange();

  final user1 = User('user 1 name', 'user1 product');
  final newProduct = Product(user1.product);
  final newProduct2 = Product.fromUser(user1);
}

void calculateNewMoney(int money) {
  if (money > 5) {
    print("old money ${Product.money}");
    print("+5 euro ");
    Product.incerementMoney(5);
    print('new money ${Product.money}');
  }
}

void productNameChange() {
  Product.money = null;
}

class Product {
  static int? money = 10;
  static const companyName = "Dash Bank";
  String name;
  Product(this.name);
  Product.vkc([this.name = 'vkc']);
  factory Product.fromUser(User user) {
    return Product(user.name);
  }
  static void incerementMoney(int newMoney) {
    if (money != null) {
      money = money! + newMoney;
    }
  }
}

class User {
  final String name;
  final String product;

  User(this.name, this.product);
}
