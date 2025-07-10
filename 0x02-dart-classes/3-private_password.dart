class Password {
  String _password = "";

  Password({required String password}) : _password = password;

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  bool isValid() {
    RegExp regex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d]{8,16}$');
    return regex.hasMatch(_password);
  }

  @override
  toString() {
    return ('Your Password is: $_password');
  }
}