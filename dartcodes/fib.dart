import 'dart:io';

void main() {
  stdout.write('How many fibonacci numbers do you awnt to generate?');
  int fib = int.parse(stdin.readLineSync()!);
  List<int> fibonacci(fib) {
    List<int> list = [1, 1]; //base step
    for (var i = 0; i < fib; i++) {
      list.add(list[i] + list[i + 1]);
    }
    return list;
  }

  var x = fibonacci(fib);
  print('The fibonacci numbers are $x');
}
