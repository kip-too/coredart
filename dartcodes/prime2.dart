import 'dart:math';

void main() {
  isPrime(int n) {
    if (n < 2) return false;
    if (n == 2) return true;
    var maxDiv = sqrt(n);
    for (var i = 2; i <= maxDiv; i++) {
      if (n % i == 0) {
        return false;
      }
    }
    return true;
  }

  print(isPrime(13));
}
