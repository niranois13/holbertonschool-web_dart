import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    String response = await fetchUserData();
    Map<String, dynamic> data = jsonDecode(response);
    String userName = data['username'];
    return ('Hello $userName');
  } catch (error) {
    return ('error caught: $error');
  }
}

Future<String> loginUser() async {
  try {
    bool response = await checkCredentials();
    switch(response) {
      case true:
        print('There is a user: $response');
        return(greetUser());
      case false:
        print('There is a user: $response');
        return ('Wrong credentials');
      default:
        return ('error caught');
    }
  } catch (error) {
    return ('error caught: $error');
  }
}