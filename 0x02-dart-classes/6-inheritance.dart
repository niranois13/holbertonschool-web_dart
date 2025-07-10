import '6-password.dart';

class User extends Password {
  String? name;
  int? age;
  double? height;
  int? id;
  String user_password;

  User({
    required this.name,
    required this.age,
    required this.height,
    required this.id,
    required this.user_password
    }) : super(password: user_password);

  Map<String, dynamic> toJson() => {
    'name': name ?? "",
    'age': age ?? 0,
    'height': height ?? 0,
    'id': id ?? 0,
  };

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      name: userJson['name'] as String?,
      age: userJson['age'] as int?,
      height: userJson['height'] as double?,
      id: userJson['id'] as int?,
      user_password: userJson['user_password'] as String,
    );
  }

  String toString() {
    return ('User(id: $id ,name: $name, age: $age, height: $height)');
  }
}