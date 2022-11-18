class User {
  late String _forename;
  String get forename => _forename;
  set forename(value) => _forename = value;

  late String surname;
  String getFullName() {
    return "$forename $surname";
  }
}

void main() {
  User user = User();
  user.forename = 'kiptoo';
  user.surname = 'kurgat';
  var fullName = user.getFullName();
  print(fullName);
}
