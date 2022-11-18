void main() {
  var fib0 = 0;
  print(fib0);
  var fib1 = 1;
  print(fib1);
  for (var i = 2; i < 10; i++) {
    var fibi = fib1 + fib0;
    print(fibi);
    fib0 = fib1;
    fib1 = fibi;
  }
}
