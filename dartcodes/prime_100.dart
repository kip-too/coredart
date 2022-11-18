import 'dart:math';

void main() {
  primeCheck(int n) {
    var maxDiv = sqrt(n);
    for (var i = 2; i <= maxDiv; i++) {
      if (n % i == 0) break;
      continue;
    }
    return n;
  }

  print(primeCheck(100));
}
