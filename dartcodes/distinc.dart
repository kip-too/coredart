void main() {
  Set<int> set = {};
  distinctElements(List<int> A) {
    for (var i in A) {
      set.add(i);
    }
    return set.toList();
  }

  print(distinctElements([1, 2, 3, 4, 5, 2, 3, 1, 7, 8, 9, 4, 9, 7, 3, 1]));
}
