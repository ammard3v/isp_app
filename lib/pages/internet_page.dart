// import 'package:flutter/material.dart';
// import 'package:demo_isp_app/models/get/dashboard_model.dart';
// import 'package:demo_isp_app/viewmodels/auth_view_model.dart';
// import 'package:provider/provider.dart';

// class InternetPage extends StatefulWidget {
//   const InternetPage({super.key});

//   @override
//   State<InternetPage> createState() => _InternetPageState();
// }

// class _InternetPageState extends State<InternetPage> {
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       Provider.of<AuthViewModel>(context, listen: false).fetchDashboard();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final authViewModel = Provider.of<AuthViewModel>(context);
//     final dashboard = authViewModel.dashboardData;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Wifi Status'),
//       ),
//       body: authViewModel.loading
//           ? const Center(child: CircularProgressIndicator())
//           : dashboard == null
//               ? const Center(child: Text('No dashboard data'))
//               : _buildDashboardContent(dashboard),
//       // body: _wifi,
//     );
//   }
// }

// // router Status
// // router active Duration
// // optical power
// // online/offline

// // restRT Router

// Widget _buildDashboardContent(DashboardModel dashboard) {
//   final userDownload =
//       (((dashboard.data?.lastConnection?.acctoutputoctets) as num) /
//           (1073741824));
//   final userUpload =
//       (((dashboard.data?.lastConnection?.acctinputoctets) as num) /
//           (1073741824));

//   debugPrint(userDownload.toString());
//   return SingleChildScrollView(
//     padding: const EdgeInsets.all(16),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         _buildDataCard('Router Status',
//             dashboard.data?.status == 0 ? 'Offline' : 'Online'),
//         _buildDataCard('Last Connection',
//             dashboard.data?.lastConnection?.acctstarttime ?? 'N/A'),
//         _buildDataCard(
//             'Online Time',
//             dashboard.data?.lastConnection?.acctoutputoctets.toString() ??
//                 'N/A'),
//         _buildDataCard('Workstation IP',
//             dashboard.data?.lastConnection?.framedipaddress ?? 'N/A'),
//         _buildDataCard('Workstation MAC',
//             dashboard.data?.lastConnection?.callingstationid ?? 'N/A'),
//         _buildDataCard(
//             'User Uplaod',
//             dashboard.data?.lastConnection?.acctinputoctets.toString() ??
//                 'N/A'),
//         _buildDataCard('User Upload', '${userUpload.toStringAsFixed(2)} GB'),
//         _buildDataCard(
//             'User Download', '${userDownload.toStringAsFixed(2)} GB'),
//         SizedBox(
//           height: 10,
//         ),
//         ElevatedButton(
//             onPressed: () {},
//             child: Text(
//               'Change Wifi Password',
//               style: TextStyle(color: Colors.red),
//             )),
//       ],
//     ),
//   );
// }

// Widget _buildDataCard(String title, String value) {
//   return Card(
//     margin: const EdgeInsets.only(bottom: 10),
//     child: Padding(
//       padding: const EdgeInsets.all(16),
//       child: Row(
//         children: [
//           Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
//           const Spacer(),
//           Text(value),
//         ],
//       ),
//     ),
//   );
// }

import 'package:flutter/material.dart';
import 'package:demo_isp_app/models/get/dashboard_model.dart';
import 'package:demo_isp_app/viewmodels/auth_view_model.dart';
import 'package:provider/provider.dart';

class InternetPage extends StatefulWidget {
  const InternetPage({super.key});

  @override
  State<InternetPage> createState() => _InternetPageState();
}

class _InternetPageState extends State<InternetPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<AuthViewModel>(context, listen: false).fetchDashboard();
    });
  }

  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);
    final dashboard = authViewModel.dashboardData;

    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Wifi Status'),
      ),
      body: authViewModel.loading
          ? const Center(child: CircularProgressIndicator())
          : dashboard == null
              ? const Center(child: Text('No dashboard data'))
              : SingleChildScrollView(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: theme.cardColor, // adapts to light/dark
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
                    child: _buildDashboardContent(dashboard, theme),
                  ),
                ),
    );
  }
}

Widget _buildDashboardContent(DashboardModel dashboard, ThemeData theme) {
  final userDownload =
      ((dashboard.data?.lastConnection?.acctoutputoctets ?? 0) / 1073741824);
  final userUpload =
      ((dashboard.data?.lastConnection?.acctinputoctets ?? 0) / 1073741824);

  final textColor = theme.textTheme.bodyLarge?.color;

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _buildDataRow('Router Status',
          dashboard.data?.status == 0 ? 'Offline' : 'Online', textColor),
      _buildDataRow('Last Connection',
          dashboard.data?.lastConnection?.acctstarttime ?? 'N/A', textColor),
      _buildDataRow(
          'Online Time',
          dashboard.data?.lastConnection?.acctoutputoctets.toString() ?? 'N/A',
          textColor),
      _buildDataRow('Workstation IP',
          dashboard.data?.lastConnection?.framedipaddress ?? 'N/A', textColor),
      _buildDataRow('Workstation MAC',
          dashboard.data?.lastConnection?.callingstationid ?? 'N/A', textColor),
      _buildDataRow(
          'User Upload',
          dashboard.data?.lastConnection?.acctinputoctets.toString() ?? 'N/A',
          textColor),
      _buildDataRow(
          'User Upload', '${userUpload.toStringAsFixed(2)} GB', textColor),
      _buildDataRow(
          'User Download', '${userDownload.toStringAsFixed(2)} GB', textColor),
      const SizedBox(height: 10),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0XFF2D3194), // keep red for button
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          minimumSize: const Size.fromHeight(48),
        ),
        onPressed: () {},
        child: const Text('Change Wifi Password'),
      ),
    ],
  );
}

Widget _buildDataRow(String title, String value, Color? textColor) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 6),
    child: Row(
      children: [
        Text(title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: textColor,
            )),
        const Spacer(),
        Text(value, style: TextStyle(color: textColor)),
      ],
    ),
  );
}
