void main() {
  var x = "";
  reverseString(String n) {
    for (int i = n.length - 1; i >= 0; i--) {
      x += n[i];
    }
    return x;
  }

  print(reverseString('kiptoo'));
}
