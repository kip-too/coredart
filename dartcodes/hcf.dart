void main() {
  findHcf(n1, n2) {
    if (n2 != 0) {
      return findHcf(n2, n1 % n2);
    } else
      return n1;
  }

  print(findHcf(366, 60));
}
