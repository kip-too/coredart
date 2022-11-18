void main() {
  List<int> list1 = [];
  findPositive(List<int> list) {
    for (var i in list) {
      if (i >= 0) {
        list1.add(i);
      }
    }
    return list1;
  }

  print(findPositive([-1, -2, -3, 4, 5, 6, -7, 8, -9, 10]));
}
