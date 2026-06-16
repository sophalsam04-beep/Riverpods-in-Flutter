import 'dart:convert';

import 'package:riverpods_demo1/model/user.dart';
import 'package:http/http.dart' as http;

class ApiService {
  // 1. Create Future of List
  Future<List<User>> fetchUser() async {
    // 2. Initialize link API
    final respone = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/users"),

      // checking status code
    );

    if (respone.statusCode == 200) {
      final List value = jsonDecode(respone.body);

      return value.map((e) => User.frmJson(e)).toList();
    }

    throw Exception("Load the error...!");
  }
}
