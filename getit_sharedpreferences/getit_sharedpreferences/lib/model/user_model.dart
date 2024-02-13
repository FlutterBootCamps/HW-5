class UserModel {
  String? name;

  UserModel({this.name});

  getName() {
    return name;
  }

  setName(String name) => this.name = name;
}
