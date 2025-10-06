import 'package:flutter/material.dart';

import '../constants/app_url.dart';
import '../init_getit.dart';
import '../models/get/complaint_list_model.dart';
import '../models/get/dashboard_model.dart';
import '../models/get/ssid_host_model.dart';
import '../models/get/user_details_model.dart';
import '../models/get/user_ledger_model.dart';
import '../models/post/login_model.dart';
import '../models/post/reset_password_model.dart';
import '../repository/auth_repository.dart';
import '../services/auth_service.dart';
import '../services/navigation_service.dart';
import 'user_view_model.dart';

class AuthViewModel with ChangeNotifier {
  final AuthRepository _authRepository = AuthRepository();
  final AuthService _authService;
  final LoginViewModel _loginModel;

  AuthViewModel(this._authService, this._loginModel);

  bool _loading = false;
  bool get loading => _loading;

  DashboardModel? _dashboardData;
  UserDetailsModel? _userDetailsModel;
  ComplaintListModel? _complaintListData;
  SsidHostModel? _ssidHostData;
  ResetPasswordModel? _resetPasswordModel;
  UserLedgerModel? _userLedgerModel;

  DashboardModel? get dashboardData => _dashboardData;
  UserDetailsModel? get userDetailsModel => _userDetailsModel;
  ComplaintListModel? get complaintListData => _complaintListData;
  SsidHostModel? get ssidhostData => _ssidHostData;
  ResetPasswordModel? get resetPasswordModel => _resetPasswordModel;
  UserLedgerModel? get userLedgerModel => _userLedgerModel;

  Future<bool> loginApi(Map<String, String> data) async {
    _loading = true;
    notifyListeners();

    try {
      final response = await _authRepository.loginApi(data);
      final loginModel = LoginModel.fromJson(response);

      
      
      
      
      
      
      

      final token = loginModel.data!.token;
      final tr069List = loginModel.data!.user?.tr069 ?? [];
      final tr069id = tr069List.isNotEmpty ? tr069List.first.id : null;

      
      if (token == null || token.isEmpty) {
        getIt<NavigationService>().showSnackbar('Invalid token received.');
      }

      
      if (tr069id == null) {
        debugPrint('Tro69 missing');
        getIt<NavigationService>()
            .showSnackbar('TR069 ID missing. Contact support.');
      }

      
      await _loginModel.saveUser(loginModel);

      debugPrint('Login successful');
      debugPrint('Token: $token');
      debugPrint('TR069 ID: $tr069id');

      return true;
    } catch (e) {
      debugPrint('Login error: $e');
      getIt<NavigationService>()
          .showSnackbar('An error occurred. Please try again.');
      return false;
    } finally {
      _loading = false;
      notifyListeners();
    }
  }

  Future<bool> resetPasswordApi(Map<String, String> data) async {
    _loading = true;
    notifyListeners();

    try {
      final token = await _loginModel.getUserToken();
      debugPrint(token);
      if (token.isEmpty) {
        throw Exception("Invalid login credentials");
      }
      await _authRepository.resetPasswordApi(data, token);
      debugPrint('rest pass suces');
      return true;
    } catch (e) {
      debugPrint('password reset error: $e');
      return false;
    } finally {
      _loading = false;
      notifyListeners();
    }
  }

  Future<bool> newComplaint(Map<String, String> data) async {
    _loading = true;
    notifyListeners();

    try {
      final token = await _loginModel.getUserToken();
      debugPrint(token);
      if (token.isEmpty) {
        throw Exception("Invalid login credentials");
      }
      await _authRepository.newComplaintApi(data, token);
      debugPrint('new complaint suces');
      return true;
    } catch (e) {
      debugPrint('complaint error: $e');
      return false;
    } finally {
      _loading = false;
      notifyListeners();
    }
  }

  Future<dynamic> fetchDashboard() async {
    _loading = true;
    notifyListeners();

    try {
      final token = await _loginModel.getUserToken();
      final data = await _authService.getDashboardData(token);
      _dashboardData = DashboardModel.fromJson(data);
      return _dashboardData;
    } catch (e) {
      debugPrint('Dashboard Fetch Error: $e');
      rethrow;
    } finally {
      _loading = false;
      notifyListeners();
    }
  }

  Future<dynamic> fetchSSIDHostList() async {
    _loading = true;
    notifyListeners();

    try {
      final token = await _loginModel.getUserToken();
      debugPrint('op in chat');
      final tr069 = await _loginModel.getTR069ID();
      debugPrint('op in chat');

      final url = AppUrl.ssidHostListApi + tr069;
      debugPrint(url);
      final data = await _authService.getSSIDHostList(token, url);
      _ssidHostData = SsidHostModel.fromJson(data);
      return _ssidHostData;
    } catch (e) {
      debugPrint('ssid/host fetch error: $e');
      rethrow;
    } finally {
      _loading = false;
      notifyListeners();
    }
  }

  Future<dynamic> fetchComplaints() async {
    _loading = true;
    notifyListeners();

    try {
      final token = await _loginModel.getUserToken();
      final url = AppUrl.complaintListApi;
      debugPrint(url);
      final data = await _authService.getComplaintList(token, url);
      _complaintListData = ComplaintListModel.fromJson(data);
      return _complaintListData;
    } catch (e) {
      debugPrint('Complaints Fetch Error: $e');
      rethrow;
    } finally {
      _loading = false;
      notifyListeners();
    }
  }

  Future<dynamic> fetchUserDetails() async {
    _loading = true;
    notifyListeners();

    try {
      final token = await _loginModel.getUserToken();
      final url = AppUrl.userDetailApi;
      debugPrint(url);
      final data = await _authService.getUserDetail(token, url);
      _userDetailsModel = UserDetailsModel.fromJson(data);
      return _userDetailsModel;
    } catch (e) {
      debugPrint('UserDetails fetch error: $e');
      rethrow;
    } finally {
      _loading = false;
      notifyListeners();
    }
  }

  Future<dynamic> fetchUserLedger() async {
    _loading = true;
    notifyListeners();

    try {
      final token = await _loginModel.getUserToken();
      final data = await _authService.getUserLedgerData(token);
      _userLedgerModel = UserLedgerModel.fromJson(data);
      return _userLedgerModel;
    } catch (e) {
      debugPrint('User ledger fetch error: $e');
      rethrow;
    } finally {
      _loading = false;
      notifyListeners();
    }
  }

  Future<bool> logout() async {
    try {
      await _authService.logout();
      await _loginModel.remove();
      _dashboardData = null;
      notifyListeners();
      return true;
    } catch (e) {
      debugPrint('logout error: $e');
      return false;
    }
  }
}
