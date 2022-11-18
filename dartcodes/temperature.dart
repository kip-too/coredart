abstract class DataRepository {
  factory DataRepository() => FakeWebServer();
  double? fetchTemperature(String city);
}

class FakeWebServer implements DataRepository {
  @override
  double? fetchTemperature(String city) {
    return 42;
  }
}

void main() {
  final repository = DataRepository();
  final temperature = repository.fetchTemperature("Manila");
  print(temperature);
}
