import 'package:http/http.dart' as http;

void main() async {
  final url = Uri.parse('https://reqres.in/api/users?page=1&per_page=6');
  final response = await http.get(
    url,
    headers: {
      'x-api-key': 'reqres-free-v1',
      'Accept': 'application/json',
    },
  );

  print('Status: ${response.statusCode}');
  print('Body: ${response.body}');
}
