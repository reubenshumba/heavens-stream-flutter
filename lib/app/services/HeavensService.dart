import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:state_manament_app/app/models/heaven.dart';
import '../dto/response/ApiHeavensResponse.dart';

import 'UserService.dart';

class HeavensService {
  final String baseUrl = 'http://10.0.2.2:8080/api/v1'; // Replace with your API base URL


  Future<ApiHeavensResponse> fetchHeavens() async {

    var authToken = await UserService().loginUser();
    final response = await http.get(
      Uri.parse('$baseUrl/heavens/all?page=0&pageSize=50&byUser=true'),
      headers: _setHeaders(authToken),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = json.decode(response.body);
      return ApiHeavensResponse.fromJson(jsonData);
    } else {
      throw Exception('Failed to load person data');
    }
  }

  Map<String, String> _setHeaders(String authToken) {
    return {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
  }

  List<Heaven> getHeaven(List<HeavenModel> content) {
    return content.map((heavenModel) => Heaven(
      id: heavenModel.id,
      heavenName: heavenModel.heavenName,
      heavenDescription: heavenModel.heavenDescription,
      imageUrl: heavenModel.imageUrl,
      heavenOwn: heavenModel.heavenOwn,
      authorities: [], // Initialize authorities as needed
      posts: [], // Initialize posts as needed
      active: heavenModel.active,
      dateCreated: heavenModel.dateCreated.toIso8601String(),
      dateUpdated: heavenModel.dateUpdated.toIso8601String(),
      updatedBy: heavenModel.updatedBy,
      createdBy: heavenModel.createdBy,
    )).toList();
  }

}

