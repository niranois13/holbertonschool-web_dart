import "package:http/http.dart" as http;
import 'dart:convert';

printRmCharacters() async {
  try {
    var response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'),);
    var data = jsonDecode(response.body);
    var characters = data['results'];

    for (var character in characters) {
      print('${character['name']}');
    }

  } catch (error) {
    return ('error caught: $error');
  }
} 