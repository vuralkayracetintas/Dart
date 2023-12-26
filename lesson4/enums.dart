void main() {
  final customerMouse = Mouses.logitech;

  print(customerMouse.index);
  print(customerMouse.name);

  if (customerMouse.name == 'logitech') {}

  if (customerMouse == Mouses.logitech) {}

  if (customerMouse.isCheckMouse('logitech')) {
    print('my mouse is : logitech');
  } else {
    print('my mouse is not : logitech');
  }
  ;
}

enum Mouses {
  magic,
  apple,
  logitech,
  a4tech,
  razer,
  steelseries,
}

extension MouseSelectedExtension on Mouses {
  bool isCheckMouse(String name) {
    return this.name == name;
  }
}
