abstract class Bottle {
  factory Bottle() => SodaBottle();
  open() {}
}

class SodaBottle implements Bottle {
  @override
  open() {
    print("Fizz Fizz");
  }
}

void main() {
  final sodabottle = Bottle();
  sodabottle.open();
}
