void main() {
  User user = User();
  user.forename = "Kurgat";
  user.surname = "Kiptoo";
  var fullName = user.getFullName();
  print(fullName);
}

class User {
  late String _forename;
  String get forename => _forename;
  set forename(value) => _forename = value;
  late String surname;
  String getFullName() {
    return "$forename $surname";
  }
}
