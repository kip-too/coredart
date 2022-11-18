void main() {
  elfish(String n) {
    for (int i = 0; i <= n.length; i++) {
      if (i == 'e' || i == 'l' || i == 'f') {
        return 'Word is elfish';
      }
    }
    return 'word is not elfish';
  }

  print(elfish('waffles'));
}
