void main() {
  final Set<int> someset = {};
  final anotherSet = {1, 2, 3, 4, 1};
  print(anotherSet);
  print(anotherSet.contains(1));
  print(anotherSet.contains(99));
  someset.add(42);
  someset.add(2112);
  someset.add(42);
  print(someset);
  someset.remove(2112);
  print(someset);
  someset.addAll([1, 2, 3, 4]);
  print(someset);
  final setA = {8, 2, 3, 1, 4};
  final setB = {1, 6, 5, 4};
  final Intersection = setA.intersection(setB);
  print(Intersection);
  final union = setA.union(setB);
  print(union);
}
