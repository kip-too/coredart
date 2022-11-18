class IntegerNumber {
  int integerNumber;
  IntegerNumber(this.integerNumber);
  void printNumber() {
    print(integerNumber);
  }
}

void main() {
  IntegerNumber int1 = IntegerNumber(1);
  IntegerNumber int2 = IntegerNumber(2);
  int1.printNumber();
  int2.printNumber();
}
