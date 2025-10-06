import 'package:flutter/material.dart';
import '../init_getit.dart';
import '../models/post/login_model.dart';
import '../pages/get/complaint_list_page.dart';
import '../pages/get/user_detail_page.dart';
import '../pages/home_page.dart';
import '../pages/post/change_password.dart';
import '../pages/post/login_page.dart';
import '../services/navigation_service.dart';
import '../viewmodels/user_view_model.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<LoginViewModel>(context, listen: false);

    return Drawer(
      child: FutureBuilder<LoginModel>(
        future: userProvider.getUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data?.data == null) {
            return const Center(child: Text("Failed to load user"));
          }

          return ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0XFF2D3194),
                ),
                child: Center(
                  child: Text(
                    'demo_isp_app Communication Pvt Ltd',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: const Text("Dashboard"),
                onTap: () => getIt<NavigationService>()
                    .navigateReplace(const HomePage()),
              ),
              ListTile(
                  title: const Text('Complaints List'),
                  onTap: () {
                    Navigator.of(context).pop();
                    getIt<NavigationService>()
                        .navigate(const ComplaintListPage());
                  }),
              ListTile(
                  title: const Text("Change Password"),
                  onTap: () {
                    Navigator.of(context).pop();
                    getIt<NavigationService>().navigate(const ChangePassword());
                  }),
              ListTile(
                  title: const Text("UserDetail"),
                  onTap: () {
                    Navigator.of(context).pop();
                    getIt<NavigationService>().navigate(const UserDetailPage());
                  }),
              ListTile(
                title: const Text("Session"),
                onTap: () {},
              ),
              ListTile(
                title: const Text("Invoice"),
                onTap: () {},
              ),
              ListTile(
                title: const Text("Receipt"),
                onTap: () {},
              ),
              ListTile(
                title: const Text("Traffic"),
                onTap: () {},
              ),
              ListTile(
                title: const Text("SLA"),
                onTap: () {},
              ),
              ListTile(
                title: const Text("Voucher"),
                onTap: () {},
              ),
              ListTile(
                title: const Text("Recharge"),
                onTap: () {},
              ),
              ListTile(
                title: const Text("RechargeList"),
                onTap: () {},
              ),
              ListTile(
                title: const Text("WifiSSID"),
                onTap: () {},
              ),
              ListTile(
                title: const Text("WifiPassword"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
                onTap: () => getIt<NavigationService>()
                    .navigateReplace(const LoginPage()),
              ),
            ],
          );
        },
      ),
    );
  }
}
