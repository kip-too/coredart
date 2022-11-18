void main() {
  sumUptoN(n) {
    var sum;
    if (n == 1) return 1; //base step
    for (int i = 2; i <= n; i++) {
      sum = n + sumUptoN(n - 1); //recursive step
    }
    return sum;
  }

  print(sumUptoN(5));
}
