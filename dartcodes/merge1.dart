void main() {
  List<int> c = [];
  mergeArray(List<int> a, List<int> b) {
    for (var i in a) {
      c.add(i);
    }
    for (var j in b) {
      c.add(j);
    }
    return c;
  }

  print(mergeArray([1, 2, 3, 4], [5, 6, 7, 8]));
}
