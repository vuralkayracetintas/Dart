void main(List<String> args) {}

abstract class IStudent {
  final String name;
  final String age;

  IStudent(this.name, this.age);

  void sayAge() {
    print('My age is $age');
  }
}

class Student implements IStudent {
  final String name;
  final String age;

  Student(this.name, this.age);

  @override
  void sayAge() {
    print(age);
  }
}

class Student2 implements IStudent {
  final String name;
  final String age;

  Student2(this.name, this.age);

  @override
  void sayAge() {
    print(age);
  }
}
