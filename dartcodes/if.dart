import 'dart:io';

void main() {
  var animal = 'fox';
  if (animal == 'cat' || animal == 'dog') {
    stdout.write('Animal is a house pet');
  } else if (animal == 'rhino') {
    stdout.write('That\'s a big animal');
  } else {
    stdout.write('Animal is NOT a house pet');
  }
}
