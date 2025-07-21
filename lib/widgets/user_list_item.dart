import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user_model.dart'; // pastikan ini ada

class UserService {
  static const String _apiKey = 'reqres-free-v1';

  static Future<List<UserModel>> fetchUsers(int page) async {
    final url = Uri.parse('https://reqres.in/api/users?page=$page&per_page=6');
    print('Fetching users... Page: $page');
    print('API URL: $url');

    final response = await http.get(
      url,
      headers: {
        'x-api-key': _apiKey,
        'Accept': 'application/json', // opsional, tapi bagus ditambahkan
      },
    );

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List users = data['data'];
      return users.map((e) => UserModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load users: ${response.statusCode}');
    }
  }
}
