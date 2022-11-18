import 'dart:io';

void main() {
  stdout.write('What is your name?');
  String name = stdin.readLineSync()!;
  stdout.write('Hello,$name,nice to meet you!');
}
