import 'package:flutter/material.dart';
import 'pages/splash_view.dart';
import 'services/navigation_service.dart';
import 'theme/theme_mode.dart';
import 'viewmodels/auth_view_model.dart';
import 'viewmodels/user_view_model.dart';
import 'theme/themes.dart';

import 'package:provider/provider.dart';

import 'init_getit.dart';

void main() {
  setupLocator();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => getIt<LoginViewModel>()),
        ChangeNotifierProvider(create: (_) => getIt<AuthViewModel>()),
        ChangeNotifierProvider(create: (_) => ThemeChangerProvider())
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeChangerProvider>(
        builder: (context, themeProvider, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'demo_isp_app',
        navigatorKey: getIt<NavigationService>().navigatorKey,
        themeMode: themeProvider.themeMode,
        theme: lightTheme,
        darkTheme: darkTheme,
        home: SplashView(),
      );
    });
  }
}
