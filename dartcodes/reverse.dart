void main() {
  List<int> list = [1, 2, 3, 4, 5];
  List<int> list1 = [];
  for (int i = list.length; i >=0; i--) {
    list1.add(i);
  }
  print(list1);
}
