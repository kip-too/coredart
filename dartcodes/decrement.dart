void main() {
  List<int> a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var b = a[9];
  for (var i in a) {
    i = b--;
    print(i);
  }
}
