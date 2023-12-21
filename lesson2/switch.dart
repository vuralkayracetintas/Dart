void main() {
  final int classDegree = 11;
  bool isSucces = false;

  const int firstClass = 1;
  const int secondClass = 2;
  const int zeroClass = 0;

  switch (classDegree) {
    case secondClass:
      print('You are in second class');
      isSucces = true;
      break;
    case firstClass:
      print('You are in first class');
      isSucces = true;
      break;
    case zeroClass:
      print('You are in zero class');
      isSucces = true;
      break;
    default:
      print('You are in unknown class');
      isSucces = false;
  }

  // print('$classDegree, $isSucces');
}
