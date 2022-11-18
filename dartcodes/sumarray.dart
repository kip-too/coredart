void main() {
  var sum = 0;
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (var i in list) {
    sum += i;
    print(sum);
  }
}
