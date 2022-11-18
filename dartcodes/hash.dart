import 'dart:io';

void main() {
  for (int row = 1; row <= 5; row++) {
    for (int hashNum = 1; hashNum <= 5; hashNum++) {
      stdout.write("#");
    }
    stdout.write('\n');
  }
}
