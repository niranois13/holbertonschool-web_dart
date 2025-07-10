class User {
  String name;
  int age;
  double height;
  int id;

  User({required this.name, required this.age, required this.height, required this.id});

  Map<String, dynamic> toJson() => {
    'id': id, 'name': name, 'age': age, 'height': height,
  };

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      name: userJson['name'] as String,
      age: userJson['age'] as int,
      height: userJson['height'] as double,
      id: userJson['id'] as int,
    );
  }

  String toString() {
    return ('User(id: $id ,name: $name, age: $age, height: $height)');
  }
}