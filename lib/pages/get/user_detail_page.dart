import 'package:flutter/material.dart';
import 'package:demo_isp_app/viewmodels/auth_view_model.dart';
import 'package:provider/provider.dart';

class UserDetailPage extends StatefulWidget {
  const UserDetailPage({super.key});

  @override
  State<UserDetailPage> createState() => _UserDetailPageState();
}

class _UserDetailPageState extends State<UserDetailPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<AuthViewModel>(context, listen: false).fetchUserDetails();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final authViewModel = Provider.of<AuthViewModel>(context);
    final userDetail = authViewModel.userDetailsModel;

    return Scaffold(
      appBar: AppBar(
        title: const Text('USER DETAILS'),
      ),
      body: authViewModel.loading
          ? const Center(child: CircularProgressIndicator())
          : userDetail == null || userDetail.data == null
              ? const Center(child: Text('No user data available.'))
              : Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: theme.cardColor,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: isDark
                            ? Colors.black.withOpacity(0.6)
                            : Colors.black12,
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  constraints: const BoxConstraints(
                    maxWidth: 600,
                  ),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      UserDetailTile(
                        icon: Icons.person,
                        title: 'Username',
                        value: userDetail.data!.username ?? 'N/A',
                      ),
                      UserDetailTile(
                        icon: Icons.card_membership,
                        title: 'Plan Name',
                        value: userDetail.data!.planName ?? 'N/A',
                      ),
                      UserDetailTile(
                        icon: Icons.contact_phone,
                        title: 'Contact Person',
                        value:
                            userDetail.data!.userinfo?.contactPerson ?? 'N/A',
                      ),
                      UserDetailTile(
                        icon: Icons.phone,
                        title: 'Phone',
                        value: userDetail.data!.userinfo?.phone ?? 'N/A',
                      ),
                      UserDetailTile(
                        icon: Icons.location_on,
                        title: 'Zone',
                        value: userDetail.data!.zoneName ?? 'N/A',
                      ),
                      UserDetailTile(
                        icon: Icons.date_range,
                        title: 'Created At',
                        value: userDetail.data!.createdAt ?? 'N/A',
                      ),
                    ],
                  ),
                ),
    );
  }
}

class UserDetailTile extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const UserDetailTile({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: Icon(icon, color: theme.colorScheme.primary),
      title: Text(title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: theme.textTheme.bodyLarge?.color)),
      subtitle: Text(value,
          style: TextStyle(color: theme.textTheme.bodyMedium?.color)),
      contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
    );
  }
}
