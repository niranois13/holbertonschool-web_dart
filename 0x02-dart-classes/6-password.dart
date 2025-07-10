class Password {
  String _password = "";

  Password({required String password}) { 
    this._password = password;
  }

  String get password {
    return this._password;
  }

  set password(String password) {
    this._password = password;
  }

  bool isValid() {
    RegExp regex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d]{8,16}$');
    return regex.hasMatch(_password);
  }

  @override
  toString() {
    return ('Your Password is: ${this._password}');
  }
}