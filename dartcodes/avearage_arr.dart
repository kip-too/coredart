void main() {
  var sum = 0;
  findAverage(List<int> list) {
    for (var i in list) {
      sum += i;
    }
    return sum / list.length;
  }

  print(findAverage([1, 2, 3, 4, 5]));
}
