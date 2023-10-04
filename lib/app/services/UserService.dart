import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/authenticated_user.dart';

class UserService {
  final String baseUrl = 'http://10.0.2.2:8080/api/v1'; // Replace with your API base URL

  Future<AuthenticatedUser> login(String username,String password) async {

    final response = await http.post(
      Uri.parse('$baseUrl/authenticate/user'),
      body: json.encode(_body(username, password)),
      headers: _setHeaders()
    );


    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = json.decode(response.body);
      return AuthenticatedUser.fromJson(jsonData);
    } else {
      throw Exception('Failed to load Login users');
    }
  }

  Future<String> loginUser() async{

     var authenticatedUser = await login("shumba5", "loaded03");
     return authenticatedUser.token;
  }

  Map<String, String> _setHeaders() {
    return {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
  }


  _body(String username, String password) =>  {
    "username":username,
    "password":password
  };

}



