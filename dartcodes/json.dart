import 'dart:convert';

class Restaurant {
  Restaurant({required this.name, required this.cuisine});
  final String name;
  final String cuisine;

  //JSON to dart
  factory Restaurant.fromJson(Map<String, dynamic> data) {
    final name = data['name'] as String;
    final cuisine = data['cuisine'] as String;
    return Restaurant(name: name, cuisine: cuisine);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'cuisine': cuisine,
    };
  }
}

final jsonData = '{"name":"pizza da Mario","cuisine":"Italian"}';
final parsedJson = jsonDecode(jsonData);
final restaurant = Restaurant.fromJson(parsedJson);

final restaurant1 = Restaurant(name: "patatas Bravas", cuisine: "Spanish");
final jsonMap = restaurant1.toJson();
final encodedJson = jsonEncode(jsonMap);
