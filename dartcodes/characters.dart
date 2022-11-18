import 'dart:io';

void main() {
  stdout.write('What is the input string?');
  String string = stdin.readLineSync()!;
  var x = string.length;
  stdout.write('$string has $x characters.');
}
