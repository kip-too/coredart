import 'dart:math';

main() {
  var rng = new Random();
  var l = new List.generate(10, (_) => rng.nextInt(100));
  print(l);
}

