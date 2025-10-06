import 'package:flutter/material.dart';
import 'package:demo_isp_app/init_getit.dart';
import 'package:demo_isp_app/pages/post/login_page.dart';
import 'package:demo_isp_app/services/navigation_service.dart';
import 'package:demo_isp_app/viewmodels/auth_view_model.dart';
import 'package:demo_isp_app/widgets/form_control_container.dart';
import 'package:provider/provider.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _currentPass = TextEditingController();
  final _newPass = TextEditingController();
  final _confirmPass = TextEditingController();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Password'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: theme.cardColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: isDark
                    ? Colors.black.withOpacity(0.6)
                    : Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          width: double.infinity,
          constraints: const BoxConstraints(maxWidth: 400),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FormControlContainer(
                obscureText: true,
                hintText: 'Current Password',
                controller: _currentPass,
              ),
              const SizedBox(height: 12),
              FormControlContainer(
                obscureText: true,
                hintText: 'New Password',
                controller: _newPass,
              ),
              const SizedBox(height: 12),
              FormControlContainer(
                obscureText: true,
                hintText: 'Confirm New Password',
                controller: _confirmPass,
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () async {
                  final currentPass = _currentPass.text.trim();
                  final newPass = _newPass.text.trim();
                  final confirmPass = _confirmPass.text.trim();

                  if (currentPass.isEmpty ||
                      newPass.isEmpty ||
                      confirmPass.isEmpty) {
                    getIt<NavigationService>()
                        .showSnackbar('Fill all required fields.');
                    return;
                  }

                  if (newPass != confirmPass) {
                    getIt<NavigationService>().showSnackbar(
                        'New password and confirm password do not match.');
                    return;
                  }

                  setState(() {
                    isLoading = true;
                  });

                  final authViewModel =
                      Provider.of<AuthViewModel>(context, listen: false);
                  final data = {
                    'currentPassword': currentPass,
                    'newPassword': newPass,
                    'confirmPassword': confirmPass
                  };

                  final success = await authViewModel.resetPasswordApi(data);

                  setState(() {
                    isLoading = false;
                  });

                  if (success) {
                    getIt<NavigationService>().showSnackbar('Reset Successful');
                    getIt<NavigationService>().navigateReplace(LoginPage());
                  } else {
                    getIt<NavigationService>().showSnackbar('Reset Failed');
                  }
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFF2D3194),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: isLoading
                      ? const CircularProgressIndicator(color: Colors.white)
                      : const Text(
                          'Reset',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
