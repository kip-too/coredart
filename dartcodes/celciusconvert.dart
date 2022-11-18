import 'dart:io';

void main() {
  print('Enter temperature in fahrenheit:');
  var f = double.parse(stdin.readLineSync()!);

  double tempConvert() {
    return f - (32 / 1.8);
  }

  print(tempConvert());
}
