void main(List<String> args) {
  final customerMouse = Mouses.logitech;

  print(customerMouse.index);
  print(customerMouse.name);

  if (customerMouse.name == 'logitech') {}

  if (customerMouse == Mouses.logitech) {}
}

enum Mouses {
  magic,
  apple,
  logitech,
  a4tech,
  razer,
  steelseries,
}
