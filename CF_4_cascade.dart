// Dart Class illustrating the use of cascade operator

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void introduceYourself() {
    print('Name: $name');
    print('Age: $age');
  }
}

void main() {
  Person person = Person('John', 25);

  person
    ..introduceYourself()
    ..age = 30
    ..introduceYourself();
}
