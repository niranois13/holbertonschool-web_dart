class User {
  String? name;
  int? age;
  double? height;
  int? id;

  User({this.name, this.age, this.height, this.id});

  Map<String, dynamic> toJson() => {
    'id': this.id, 'name': this.name, 'age': this.age, 'height': this.height,
  };

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      id: userJson['id'],
    );
  }

  String toString() {
    return ('User(id: ${this.id} ,name: ${this.name}, age: ${this.age}, height: ${this.height})');
  }
}