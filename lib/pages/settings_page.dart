// import 'package:flutter/material.dart';
// import 'package:demo_isp_app/pages/get/user_ledger_page.dart';
// import 'package:demo_isp_app/pages/post/login_page.dart';
// import 'package:demo_isp_app/theme/theme_mode.dart';
// import 'package:demo_isp_app/init_getit.dart';
// import 'package:demo_isp_app/services/navigation_service.dart';

// import 'package:demo_isp_app/viewmodels/user_view_model.dart';
// import 'package:provider/provider.dart';

// class SettingsPage extends StatefulWidget {
//   const SettingsPage({super.key});

//   @override
//   State<SettingsPage> createState() => _SettingsPageState();
// }

// class _SettingsPageState extends State<SettingsPage> {
//   final List<Map<String, dynamic>> settingsItems = [
//     {'icon': Icons.lock_outline_rounded, 'label': 'Change Password Options'},
//     {'icon': Icons.notifications_none, 'label': 'Notification Preferences'},
//     {'icon': Icons.language, 'label': 'Language Selection'},
//     {'icon': Icons.payment, 'label': 'Billing'},
//     {'icon': Icons.color_lens, 'label': 'Theme'},
//     {'icon': Icons.refresh, 'label': 'Data Refresh'},
//     {'icon': Icons.logout, 'label': 'Logout'},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final themeChanger = Provider.of<ThemeChangerProvider>(context);
//     final userViewModel = Provider.of<LoginViewModel>(context, listen: false);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Settings'),
//       ),
//       body: Container(
//         padding: const EdgeInsets.all(30),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             ...settingsItems.map((items) {
//               return Column(
//                 children: [
//                   const SizedBox(height: 10),
//                   Container(
//                     decoration: BoxDecoration(
//                       color: Theme.of(context).colorScheme.primary,
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: InkWell(
//                       onTap: () async {
//                         if (items['label'] == 'Change Password Options') {
//                           // Navigator.of(context).push(MaterialPageRoute(
//                           //     builder: (context) => ForgotPassword()));
//                         }
//                         if (items['label'] == 'Billing') {
//                           Navigator.of(context).push(MaterialPageRoute(
//                               builder: (context) => UserLedgerPage()));
//                         }

//                         if (items['label'] == 'Logout') {
//                           final confirmed = await showDialog<bool>(
//                             context: context,
//                             builder: (ctx) => AlertDialog(
//                               title: Text("Confirm Logout"),
//                               content: Text(
//                                 "Are you sure you want to logout?",
//                               ),
//                               actions: [
//                                 TextButton(
//                                   onPressed: () => Navigator.of(ctx).pop(false),
//                                   child: const Text("Cancel"),
//                                 ),
//                                 TextButton(
//                                   onPressed: () => Navigator.of(ctx).pop(true),
//                                   child: const Text("Logout"),
//                                 ),
//                               ],
//                             ),
//                           );

//                           if (confirmed == true) {
//                             final logout = await userViewModel.remove();
//                             if (logout) {
//                               getIt<NavigationService>()
//                                   .navigateReplace(const LoginPage());
//                             } else {
//                               getIt<NavigationService>()
//                                   .showSnackbar("Logout failed");
//                             }
//                           }
//                         }

//                         if (items['label'] == 'Theme') {
//                           showModalBottomSheet(
//                             // ignore: use_build_context_synchronously
//                             context: context,
//                             builder: (ctx) => Container(
//                               padding: const EdgeInsets.all(12),
//                               height: 200,
//                               child: Column(
//                                 children: [
//                                   RadioListTile<ThemeMode>(
//                                     title: const Text('Light Mode'),
//                                     value: ThemeMode.light,
//                                     groupValue: themeChanger.themeMode,
//                                     onChanged: themeChanger.setTheme,
//                                   ),
//                                   RadioListTile<ThemeMode>(
//                                     title: const Text('Dark Mode'),
//                                     value: ThemeMode.dark,
//                                     groupValue: themeChanger.themeMode,
//                                     onChanged: themeChanger.setTheme,
//                                   ),
//                                   RadioListTile<ThemeMode>(
//                                     title: const Text('System Default'),
//                                     value: ThemeMode.system,
//                                     groupValue: themeChanger.themeMode,
//                                     onChanged: themeChanger.setTheme,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           );
//                         }
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: Row(
//                           children: [
//                             Icon(
//                               items['icon'],
//                               size: 26,
//                               color: Theme.of(context).colorScheme.onSecondary,
//                             ),
//                             const SizedBox(width: 20),
//                             Text(
//                               items['label'],
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 16,
//                                 color:
//                                     Theme.of(context).colorScheme.onSecondary,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               );
//             }),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:demo_isp_app/pages/get/user_ledger_page.dart';
import 'package:demo_isp_app/pages/post/login_page.dart';
import 'package:demo_isp_app/theme/theme_mode.dart';
import 'package:demo_isp_app/init_getit.dart';
import 'package:demo_isp_app/services/navigation_service.dart';
import 'package:demo_isp_app/viewmodels/user_view_model.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final List<Map<String, dynamic>> settingsItems = [
    {'icon': Icons.lock_outline_rounded, 'label': 'Change Password Options'},
    {'icon': Icons.notifications_none, 'label': 'Notification Preferences'},
    {'icon': Icons.language, 'label': 'Language Selection'},
    {'icon': Icons.payment, 'label': 'Billing'},
    {'icon': Icons.color_lens, 'label': 'Theme'},
    {'icon': Icons.refresh, 'label': 'Data Refresh'},
    {'icon': Icons.logout, 'label': 'Logout'},
  ];

  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChangerProvider>(context);
    final userViewModel = Provider.of<LoginViewModel>(context, listen: false);
    final theme = Theme.of(context);
    final iconColor = theme.iconTheme.color;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(
          itemCount: settingsItems.length,
          separatorBuilder: (_, __) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            final item = settingsItems[index];

            return Material(
              color: theme.cardColor,
              elevation: 2,
              borderRadius: BorderRadius.circular(12),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () =>
                    _handleItemTap(item['label'], themeChanger, userViewModel),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                  child: Row(
                    children: [
                      Icon(
                        item['icon'],
                        size: 26,
                        color: iconColor,
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          item['label'],
                          style: theme.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const Icon(Icons.chevron_right),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Future<void> _handleItemTap(
    String label,
    ThemeChangerProvider themeChanger,
    LoginViewModel userViewModel,
  ) async {
    switch (label) {
      case 'Billing':
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const UserLedgerPage()),
        );
        break;

      case 'Theme':
        showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          builder: (ctx) => Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Choose Theme",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                RadioListTile<ThemeMode>(
                  title: const Text('Light Mode'),
                  value: ThemeMode.light,
                  groupValue: themeChanger.themeMode,
                  onChanged: themeChanger.setTheme,
                ),
                RadioListTile<ThemeMode>(
                  title: const Text('Dark Mode'),
                  value: ThemeMode.dark,
                  groupValue: themeChanger.themeMode,
                  onChanged: themeChanger.setTheme,
                ),
                RadioListTile<ThemeMode>(
                  title: const Text('System Default'),
                  value: ThemeMode.system,
                  groupValue: themeChanger.themeMode,
                  onChanged: themeChanger.setTheme,
                ),
              ],
            ),
          ),
        );
        break;

      case 'Logout':
        final confirmed = await showDialog<bool>(
          context: context,
          builder: (ctx) => AlertDialog(
            title: const Text("Confirm Logout"),
            content: const Text("Are you sure you want to logout?"),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(false),
                child: const Text("Cancel"),
              ),
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(true),
                child: const Text("Logout"),
              ),
            ],
          ),
        );

        if (confirmed == true) {
          final logout = await userViewModel.remove();
          if (logout) {
            getIt<NavigationService>().navigateReplace(const LoginPage());
          } else {
            getIt<NavigationService>().showSnackbar("Logout failed");
          }
        }
        break;

      default:
        getIt<NavigationService>().showSnackbar("$label clicked");
    }
  }
}
