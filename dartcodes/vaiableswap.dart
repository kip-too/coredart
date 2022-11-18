void main() {
  int a = 1;
  int b = 2;

  print(a);
  print(b);
//introduce an auxilliary variable to act a s a tempoary storage,
  var temp = a;
  a = b;
  b = temp;
  print(a);
  print(b);
}
