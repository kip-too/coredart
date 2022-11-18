void main() {
  var max = 0;
  findMaxim(List<int> list) {
    for (var i in list) {
      if (i > max) {
        max = i;
      }
    }
    return max;
  }

  print(findMaxim([1, 2, 3, 4, 5, 6, 7]));
}
