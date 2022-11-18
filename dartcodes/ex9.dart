import 'dart:math';
import 'dart:io';

void main() {
  int random = Random().nextInt(100);
  print('Enter a number:');
  int number = int.parse(stdin.readLineSync()!);
  if (number < random) {
    print('Too low!');
  } else if (number > random) {
    print('Too high!');
  } else if (number == random) {
    print('Exatly Right!');
  }
}
