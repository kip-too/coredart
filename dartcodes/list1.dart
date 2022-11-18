void main() {
  List<int> a = [5, 10, 15, 20, 25];
  List<int> b = [];
  List<int> checkList() {
    b = [a.first, a.last];
    return b;
  }

  var x = checkList();
  print(x);
}
