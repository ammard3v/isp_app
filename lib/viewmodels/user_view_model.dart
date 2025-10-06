import 'dart:convert';

import 'package:flutter/material.dart';
import '../models/post/login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginViewModel with ChangeNotifier {
  static const String _tokenKey = 'token';
  static const String _tr069Id = 'tr069';

  static const String _userKey = 'user';

  Future<bool> saveUser(LoginModel user) async {
    try {
      final token = user.data?.token;
      final tr069List = user.data!.user?.tr069 ?? [];
      final tr069id = tr069List.isNotEmpty ? tr069List.first.id : null;

      final prefs = await SharedPreferences.getInstance();

      final userJson = jsonEncode(user.toJson());

      await prefs.setString(_tokenKey, token.toString());
      await prefs.setString(_tr069Id, tr069id.toString());
      await prefs.setString(_userKey, userJson);

      notifyListeners();
      return true;
    } catch (e) {
      debugPrint('Error saving user: $e');
      return false;
    }
  }

  Future<String> getUserToken() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(_tokenKey);

      if (token == null) {
        throw Exception("GetUserToken null");
      }

      return token;
    } catch (e) {
      debugPrint('GetUserToken error: $e');

      return 'null';
    }
  }

  Future<String> getTR069ID() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final tr069id = prefs.getString(_tr069Id);

      if (tr069id == null || tr069id.isEmpty) {
        throw Exception("Token not found");
      }
      return tr069id;
    } catch (e) {
      debugPrint('Tro69id error: $e');
      rethrow;
    }
  }

  Future<LoginModel> getUser() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final userJson = prefs.getString(_userKey);

      if (userJson == null || userJson.isEmpty) {
        throw Exception("User data not found");
      }

      final decodedJson = jsonDecode(userJson);
      return LoginModel.fromJson(decodedJson);
    } catch (e) {
      debugPrint('Error getting user: $e');
      return LoginModel();
    }
  }

  Future<bool> remove() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_tokenKey);
      notifyListeners();
      return true;
    } catch (e) {
      debugPrint('Remove Token Error: $e');
      return false;
    }
  }
}
