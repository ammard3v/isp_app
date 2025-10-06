import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/post/login_page.dart';
import 'navigation_service.dart';
import 'validate_token.dart';
import '../viewmodels/user_view_model.dart';
import '../init_getit.dart';

class SplashServices {
  Future<void> checkAuthentication(BuildContext context) async {
    try {
      await Future.delayed(const Duration(seconds: 3));
      final token = await getIt<LoginViewModel>().getUserToken();
      debugPrint('Splash Token: $token');

      final isTokenValid = await TestToken().isTokenValid(token);
      debugPrint('Is Token Valid :$isTokenValid');

      if (isTokenValid) {
        getIt<NavigationService>().navigateReplace(const HomePage());
      } else {
        getIt<NavigationService>().navigateReplace(const LoginPage());
      }
    } catch (e) {
      debugPrint('Splash Authentication Error: $e');
      getIt<NavigationService>().navigateReplace(const LoginPage());
    }
  }
}
