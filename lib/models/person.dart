class Person {
  final int id;
  final String firstName;
  final String secondName;
  final String hoppy;
  final String field;
  final int age;
  final String city;
  Person(
      {required this.id,
      required this.firstName,
      required this.secondName,
      required this.hoppy,
      required this.field,
      required this.age,
      required this.city});

  factory Person.fromJson(Map json) {
    return Person(
        id: json["id"],
        firstName: json["firstName"],
        secondName: json["secondName"],
        hoppy: json["hoppy"],
        field: json["field"],
        age: json["age"],
        city: json["city"]);
  }

  toMap() {
    return {
      "id": id,
      "firstName": firstName,
      "secondName": secondName,
      "hoppy": hoppy,
      "field": field,
      "age": age,
      "city": city,
    };
  }
}
