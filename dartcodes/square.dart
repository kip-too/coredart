class Square {
  int side;
  final SIDES_NUMBER = 4;
  Square(this.side);
  int perimeter() {
    return side * SIDES_NUMBER;
  }

  int area() {
    return side * side;
  }
}

void main() {
  Square s1 = Square(5);
  print(s1.perimeter());
  print(s1.area());
}
