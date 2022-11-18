import 'dart:math';

void main() {
  final random = Random();
  while (random.nextInt(6) + 1 != 6) {
    print('Not a six');
  }
  print('Finally,you got a six');
}
