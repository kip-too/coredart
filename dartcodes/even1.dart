void main() {
  var sum = 0;
  for (var i = 11; i <= 30; i++) {
    if (i % 2 == 0) {
      sum += i;
      print(sum);
    }
  }
}
