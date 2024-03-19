import 'dart:convert';

import 'package:project/models/admin.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<Admin>> getAdmin() async {
    var client = http.Client();

    var uri = Uri.parse(
        'https://311bpimr5l.execute-api.ap-south-1.amazonaws.com/dev/adminListEvent');

    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var body = response.body;
      final data = jsonDecode(body) as List;
      final admin =
          data.map((e) => Admin.fromJson(e as Map<String, dynamic>)).toList();
      return admin;
    }

    return [];
  }
}
