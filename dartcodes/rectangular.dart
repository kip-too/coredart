import 'dart:io';

void main() {
  stdout.write('What is the length of the room in feet?');
  double length = double.parse(stdin.readLineSync()!);

  stdout.write('What is the width of the room in feet?');
  double width = double.parse(stdin.readLineSync()!);

  stdout.write('you enterd dimensions of $length feet by $width feet.');

  double area = length * width;
  stdout.write('The area is \n $area square feet');

  double areaConvert() {
    return (area * area) * 0.09290304;
  }

  var x = areaConvert();
  stdout.write('$x square metres');
}
