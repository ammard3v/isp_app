import 'package:flutter/cupertino.dart';
import '../constants/app_url.dart';
import '../repository/auth_repository.dart';

class AuthService {
  final AuthRepository _authRepository = AuthRepository();

  Future<dynamic> getDashboardData(String token) async {
    debugPrint(token);
    return await _authRepository.getApi(token, AppUrl.dashboardApi);
  }

  Future<dynamic> getUserLedgerData(String token) async {
    debugPrint(token);
    return await _authRepository.getApi(token, AppUrl.userLedgerApi);
  }

  Future<dynamic> getSSIDHostList(String token, String url) async {
    debugPrint(token);
    return await _authRepository.getApi(token, url);
  }

  Future<dynamic> getComplaintList(String token, String url) async {
    debugPrint(token);
    return await _authRepository.getApi(token, url);
  }

  Future<dynamic> getUserDetail(String token, String url) async {
    debugPrint(token);
    return await _authRepository.getApi(token, url);
  }

  Future<void> logout() async {}
}
