final response = await http.get(
  Uri.parse('https://reqres.in/api/users?page=$page&per_page=6'),
  headers: {
    'x-api-key': 'reqres-free-v1',
    'Accept': 'application/json', // Tambahan penting!
  },
);
