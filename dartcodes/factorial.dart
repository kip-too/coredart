import 'dart:io';

void main() {
  stdout.write('Enter an integer number:');
  int n = int.parse(stdin.readLineSync()!);
  int factorial(n) {
    if (n == 1) return 1; //Base Step

    return n * factorial(n - 1); //recursive step
  }

  var x = factorial(n);
  print('The factorial of $n is $x');
}
