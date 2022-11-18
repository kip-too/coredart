void main() {
  final pass = Password();
  pass.value = 'kiptoo';
  print(pass);
  print(pass.isValid());
}

class Password {
  String value = '';
  bool isValid() {
    if (value.length > 8) {
      return true;
    } else {
      return false;
    }
  }

  @override
  String toString() {
    return '{"value":"$value"}';
  }
}
