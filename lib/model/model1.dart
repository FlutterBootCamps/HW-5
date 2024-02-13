/*class Model1 {
  final String Name;
  final String Age;
  final double Hight;

  Model1({
  required this.Name,
   required this.Age,
    required this.Hight
});




factory Model1.fromJson(Map json) {
    return Model1(
        Name: json["Name"],
        Age: json["Age"],
        Hight: double.parse(json["Hight"].toString()));
        }

  toMap() {
    return {
      "Name": Name,
      "Age": Age,
      "Hight": Hight,
      
    };
  }

  getData() {}
  }*/