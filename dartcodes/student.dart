enum Grade { A, B, C, D, E, F }

class Person {
  Person(this.givenName, this.surname);

  String givenName;
  String surname;
  String get fullName => '$givenName $surname';

  @override
  String toString() => fullName;
}

class Student extends Person {
  Student(String givenName, String surname) : super(givenName, surname);

  var grades = <Grade>[];
  @override
  String get fullName => '$surname, $givenName';
}

class SchoolBandMember extends Student {
  SchoolBandMember(String givenName, String surname)
      : super(givenName, surname);
  static const minimumPracticeTime = 2;
}

class StudentAthlete extends Student {
  StudentAthlete(String givenName, String surname) : super(givenName, surname);
  bool get isEligible => grades.every((grade) => grade != Grade.F);
}

void main() {
  final jon = Person('Jon', 'Snow');
  final jane = Student('Jane', 'Snow');
  final jessie = SchoolBandMember('Jessie', 'Jones');
  final marty = StudentAthlete('Marty', 'McFly');
  final historyGrade = Grade.B;
  jane.grades.add(historyGrade);
  print(jon.fullName);
  print(jane.fullName);
  print(jessie.fullName);
  print(marty.fullName);
  print(marty.isEligible);
}
