import 'dart:io';

void main() {
  stdout.write('Enter a noun:');
  String noun = stdin.readLineSync()!;
  stdout.write('Enter a verb:');
  String verb = stdin.readLineSync()!;
  stdout.write('Enter an adjective:');
  String adjective = stdin.readLineSync()!;
  stdout.write('Enter an adverb:');
  String adverb = stdin.readLineSync()!;

  stdout.write('Do you$verb your$adjective $noun $adverb? Thats hilarious!');
}
