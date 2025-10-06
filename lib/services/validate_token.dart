import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../constants/app_url.dart';

class TestToken {
  Future<bool> isTokenValid(String validToken) async {
    try {
      final response = await http.get(
        Uri.parse(AppUrl.dashboardApi),
        headers: {
          'Authorization': 'Bearer $validToken',
        },
      );
      if (response.statusCode == 401) {
        debugPrint('Token is Dead');
        return false;
      }
      return true;
    } catch (e) {
      debugPrint('Token check failed: $e');
      return false;
    }
  }
}
