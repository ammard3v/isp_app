import 'package:flutter/widgets.dart';
import '../constants/app_url.dart';
import '../data/network/BaseApiServices.dart';
import '../data/network/NetworkApiService.dart';

class AuthRepository {
  final BaseApiServices _apiServices = NetworkApiService();

  Future<dynamic> loginApi(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.getPostApiResponse(AppUrl.loginApi, data);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> getApi(String token, String url) async {
    debugPrint(token);
    return await _apiServices.getGetApiResponse(
      url,
      token,
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
    );
  }

  Future<dynamic> resetPasswordApi(dynamic data, String token) async {
    try {
      dynamic response = await _apiServices
          .getPostApiResponse(AppUrl.resetPasswordApi, data, token: token);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> newComplaintApi(dynamic data, String token) async {
    try {
      dynamic response = await _apiServices
          .getPostApiResponse(AppUrl.newComplaintApi, data, token: token);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
