void main() {
  fibonacci(n) {
    var fib;
    if (n == 0) return n;
    if (n == 1) return n;
    for (int i = 2; i <= n; i++) {
      fib = fibonacci(n - 2) + fibonacci(n - 1);
    }
    return fib;
  }

  print(fibonacci(11));
}
