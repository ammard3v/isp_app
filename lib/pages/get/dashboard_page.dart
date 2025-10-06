import 'package:flutter/material.dart';
import '../../viewmodels/auth_view_model.dart';
import '../../models/get/dashboard_model.dart';
// import 'package:demo_isp_app/widgets/app_drawer.dart';
import 'package:demo_isp_app/widgets/dashboard_quick_menu.dart';
import 'package:provider/provider.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<AuthViewModel>(context, listen: false).fetchDashboard();
    });
  }

  String _greeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) return 'Good Morning';
    if (hour < 17) return 'Good Afternoon';
    return 'Good Evening';
  }

  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);
    final dashboard = authViewModel.dashboardData;

    return Scaffold(
      // drawer: const AppDrawer(),
      appBar: AppBar(title: const Text('Dashboard')),
      body: authViewModel.loading
          ? const Center(child: CircularProgressIndicator())
          : dashboard == null
              ? const Center(child: Text('No dashboard data'))
              : _buildDashboardContent(dashboard),
    );
  }

  Widget _buildDashboardContent(DashboardModel dashboard) {
    final user = dashboard.data?.username?.toUpperCase() ?? 'User';

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${_greeting()}, $user!',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: 20),
          const DashboardQuickMenu(),
          const SizedBox(height: 20),
          _buildDataCard('Plan Name', dashboard.data?.planName ?? 'N/A'),
          _buildDataCard(
              'Download Used', dashboard.data?.usedData?.download ?? 'N/A'),
          _buildDataCard(
              'Upload Used', dashboard.data?.usedData?.upload ?? 'N/A'),
          _buildDataCard('Expiry Date',
              dashboard.data?.currentRecharge?.expiryDate ?? 'N/A'),
        ],
      ),
    );
  }

  Widget _buildDataCard(String title, String value) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            const Spacer(),
            Text(
              value,
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
