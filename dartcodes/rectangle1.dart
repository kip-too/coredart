class Rectangle {
  int length;
  int width;
  Rectangle(this.length, this.width);
  int perimeter() {
    return 2 * (length + width);
  }

  int area() {
    return length * width;
  }
}

void main() {
  Rectangle r1 = Rectangle(4, 5);
  print(r1.perimeter());
  print(r1.area());
}
