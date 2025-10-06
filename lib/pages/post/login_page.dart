import 'package:flutter/material.dart';
import '../../init_getit.dart';
import '../home_page.dart';
import '../../services/navigation_service.dart';
import '../../viewmodels/auth_view_model.dart';
import '../../widgets/form_control_container.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context, listen: false);
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Material(
            elevation: 6,
            color: theme.cardColor,
            borderRadius: BorderRadius.circular(16),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
              decoration: BoxDecoration(
                color: theme.cardColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 20),
                  Image.asset('assets/images/logo.png', height: 100),
                  const SizedBox(height: 30),
                  FormControlContainer(
                    prefixImg: 'assets/iconsImg/email.svg',
                    controller: _emailController,
                    hintText: 'Email or Username',
                    obscureText: false,
                    showVisibilityToggle: false,
                  ),
                  const SizedBox(height: 20),
                  FormControlContainer(
                    prefixImg: 'assets/iconsImg/lock.svg',
                    controller: _passwordController,
                    hintText: 'Password',
                    obscureText: true,
                    showVisibilityToggle: true,
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () async {
                      debugPrint('Login Called');
                      final username = _emailController.text.trim();
                      final password = _passwordController.text.trim();

                      if (username.isEmpty || password.isEmpty) {
                        getIt<NavigationService>()
                            .showSnackbar('Username and password required');
                        return;
                      }

                      final data = {
                        'username': username,
                        'password': password,
                      };

                      final success = await authViewModel.loginApi(data);

                      if (success) {
                        getIt<NavigationService>()
                            .showSnackbar('Login Successful');
                        getIt<NavigationService>()
                            .navigateReplace(const HomePage());
                      } else {
                        getIt<NavigationService>().showSnackbar('Login Failed');
                      }
                    },
                    child: Container(
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: authViewModel.loading
                            ? Colors.grey.shade300
                            : theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: authViewModel.loading
                            ? CircularProgressIndicator(
                                strokeWidth: 2,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  isDark ? Colors.white : Colors.black,
                                ),
                              )
                            : Text(
                                'LOGIN',
                                style: TextStyle(
                                  color: theme.colorScheme.onPrimary,
                                  fontSize: 16,
                                ),
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
