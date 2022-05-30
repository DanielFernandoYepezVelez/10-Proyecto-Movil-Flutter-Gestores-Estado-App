/* class UserModel {
  String name;
  String age;
  List<String> professions;

  UserModel({required this.name, required this.age, required this.professions});
} */

class UserModel {
  String? name;
  String? age;
  List<String> professions;

  UserModel({
    this.name,
    this.age,
    this.professions = const [],
  });
}
