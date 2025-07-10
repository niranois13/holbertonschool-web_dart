import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  try {
    String response = await fetchUserData();
    Map<String, dynamic> data = jsonDecode(response); 
    String id = data['id'];
    return ('$id');
  } catch (error) {
    return ('Error: $error');
  }
}