class UserModel {
  final String name;
  final String age;
  final List<String> professions;

  UserModel({
    required this.name,
    required this.age,
    required this.professions,
  });

  UserModel copyWith({
    String? name,
    String? age,
    List<String>? professions,
  }) =>
      UserModel(
        name: name ?? this.name,
        age: age ?? this.age,
        professions: professions ?? this.professions,
      );
}
