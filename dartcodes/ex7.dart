void main() {
  List<int> a = [
    1,
    4,
    16,
    25,
    36,
    49,
    81,
  ];
  List<int> b = [];
  for (var i in a) {
    if (i % 2 == 0) {
      b.add(i);
    }
  }
  print(b);
}
