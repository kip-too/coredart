void main() {
  findFib(n) {
    //base case
    if (n == 0) return 0;
    if (n == 1) return 1;
    //recursive step
    return findFib(n - 1) + findFib(n - 2);
  }

  print(findFib(10));
}
