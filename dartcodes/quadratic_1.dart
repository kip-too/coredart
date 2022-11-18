var a;
var b;
var c;
quadraticRoots(a, b, c) {
  var d = (b * b) - (4 * a * c);
  if (a == 0) {
    print('Linear');
  } else
    return d;
  if (d > 0) {
    print('Roots are real and distinct!');
  } else if (d == 0) {
    print('Roots are real and equal!');
  } else {
    print('Roots are imaginary');
  }
}

void main() {
  print(quadraticRoots(3, 2, 4));
}
