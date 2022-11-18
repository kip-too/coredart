final Map<String, int> emptyMap = {};
final inventory = {
  'cakes': 20,
  'pies': 14,
  'donuts': 37,
  'cookies': 141,
};

final digitToword = {
  1: 'one',
  2: 'two',
  3: 'three',
  4: 'four',
};
void main() {
  print(emptyMap.length);
  print(inventory);
  print(digitToword);
  final numberofcakes = inventory['cakes'];
  print(numberofcakes);
}
