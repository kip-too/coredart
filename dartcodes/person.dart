void main() {
  Person person = Person();
  person.printDescription();
}

class Person {
  String name = 'kiptoo';
  int age = 21;
  double height = 1.63;
  Person() {
    this.name = name;
    this.age = age;
    this.height = height;
  }
  void printDescription() {
    print("My name is $name.I'm $age years old.I'm $height metres tall");
  }
}
