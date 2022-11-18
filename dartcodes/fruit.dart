class Fruit {
  Fruit(this.color);
  String color;
  String get colour => '$color';

  @override
  String toString() => colour;
}

class Melon extends Fruit {
  Melon(String color) : super(color);
}

class Watermelon extends Melon {
  Watermelon(String color) : super(color);
}

class Cantaloupe extends Melon {
  Cantaloupe(String color) : super(color);
}

void main() {
  final fruit = Fruit('Red');
  final melon = Melon("Green");
  final water = Watermelon('white stripes');
  print(fruit);
  print(melon);
  print(water);
}
