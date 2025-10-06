import 'package:flutter/material.dart';
import 'package:demo_isp_app/pages/get/complaint_list_page.dart';
import 'package:demo_isp_app/pages/get/ssid_host_page.dart';
import 'package:demo_isp_app/pages/get/user_detail_page.dart';
import 'package:demo_isp_app/pages/internet_page.dart';
import 'package:demo_isp_app/pages/post/change_password.dart';
import 'package:demo_isp_app/pages/post/new_complaints_page.dart';
import 'package:demo_isp_app/widgets/app_styles.dart';

class DashboardQuickMenu extends StatelessWidget {
  const DashboardQuickMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> quickMenuItems = [
      {'icon': Icons.wifi, 'label': 'Internet', 'page': const InternetPage()},
      {
        'icon': Icons.restore,
        'label': 'Change Password',
        'page': const ChangePassword()
      },
      {
        'icon': Icons.person,
        'label': 'User Info',
        'page': const UserDetailPage()
      },
      {'icon': Icons.devices, 'label': 'Devices', 'page': const SSIDHostPage()},
      {
        'icon': Icons.call,
        'label': 'Complaints',
        'page': const ComplaintListPage()
      },
      {
        'icon': Icons.error,
        'label': 'New Complaint',
        'page': const NewComplaintsPage()
      },
    ];

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: AppStyles.primaryGradient,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: quickMenuItems.length,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 0.9,
        ),
        itemBuilder: (context, index) {
          final item = quickMenuItems[index];
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => item['page']),
              );
            },
            borderRadius: BorderRadius.circular(12),
            child: Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(item['icon'],
                        size: 30, color: Theme.of(context).colorScheme.primary),
                    const SizedBox(height: 10),
                    Text(
                      item['label'],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
