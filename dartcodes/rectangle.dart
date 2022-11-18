import 'dart:math';

void main() {
  var leftTop = const Point(20, 50);
  var rightBottom = const Point(300, 600);
  var rectangle = Rectangle.fromPoints(leftTop, rightBottom);
  print(rectangle.left);
  print(rectangle.top);
  print(rectangle.right);
  print(rectangle.bottom);
}
