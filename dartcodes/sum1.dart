import 'dart:math';

void main() {
  quadratic(a, b, c) {
    var x1;
    var x2;
    var a;
    var b;
    var c;
    x1 = (b + sqrt((b * b - 4 * a * c))) / (2 * a);
    return x1;
  }

  quadratic(3, -(5), -(8));
}
