import 'dart:io';

class Area {
  int? length;
  int? width;

  void getArea() {
    var area = length! * width!;
    print("The area of the triangle is {$area}");
  }

  void setArea() {
    print("Enter the length:");
    String? Length = stdin.readLineSync();
    print("Enter the width:");
    String? width = stdin.readLineSync();
  }
}

void main(List<String> args) {
  Area a1 = Area();
  a1.length;
  a1.width;
  a1.getArea();
}
