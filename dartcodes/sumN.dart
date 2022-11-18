import 'dart:io';

void main() {
  stdout.write('Enter a natural number:');
  int n = int.parse(stdin.readLineSync()!);

  int computeSum(n) {
    int curr = 0; //Base Step
    int sum = 0;
    for (curr = 0; curr <= n; curr++) {
      sum += curr; //Recursive Step
    }
    return sum;
  }

  var x = computeSum(n);
  print('The sum upto $n is $x ');
}
