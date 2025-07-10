class Password {
  String password = "";

  bool isValid() {
    RegExp regex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d]{8,16}$');
    return regex.hasMatch(password);
  }

  toString() {
    return ('Your Password is: $password');
  }
}