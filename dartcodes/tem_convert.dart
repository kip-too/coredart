import 'dart:io';

void main() {
  stdout.write('Enter temperature in Farenheit:');
  double tempFarenheit = double.parse(stdin.readLineSync()!);
  double tempConverter() {
    return (tempFarenheit - 32) / 1.8;
  }

  var x = tempConverter();
  stdout.write('The temperature in celsius is:$x');
}
