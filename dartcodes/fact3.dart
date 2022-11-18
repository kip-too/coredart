void main() {
  var fact;
  factorial(n) {
    if (n == 0) return 1;
    if (n > 0) {
      fact = n * factorial(n - 1);
    }
    return fact;
  }

  print(factorial(6));
}
