// import 'package:flutter/material.dart';
// import 'package:demo_isp_app/model/connected_device_model.dart';
// import 'package:demo_isp_app/models/connected_device_model.dart';
// import 'package:demo_isp_app/services/ssid_service.dart';

// class ConnectedDevices extends StatefulWidget {
//   const ConnectedDevices({super.key});

//   @override
//   State<ConnectedDevices> createState() => _ConnectedDevicesState();
// }

// class _ConnectedDevicesState extends State<ConnectedDevices> {
//   // ConnectedDeviceModel? connectedDeviceModel;
//   // final SSidService ssidService = SSidService();

//   @override
//   void initState() {
//     super.initState();
//     fetchConnectedDevices();
//   }

//   void fetchConnectedDevices() async {
//     try {
//       final data = await ssidService.fetchConnectedDevices();
//       setState(() {
//         connectedDeviceModel = data;
//       });
//     } catch (e, stackTrace) {
//       print('Error loading connected devices: $e');
//       print('Stack trace: $stackTrace');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Connected Devices'),
//       ),
//       body: connectedDeviceModel == null
//           ? const Center(child: Text('No devices Connected'))
//           : SingleChildScrollView(
//               padding: const EdgeInsets.all(12),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("Device Type: ${connectedDeviceModel!.deviceType}",
//                       style: const TextStyle(
//                           fontSize: 18, fontWeight: FontWeight.bold)),
//                   const SizedBox(height: 20),
//                   const Text("Available SSIDs:",
//                       style:
//                           TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
//                   const SizedBox(height: 10),

//                   ...connectedDeviceModel!.ssid.entries.map((entry) {
//                     final ssid = entry.value;
//                     return Card(
//                       child: ListTile(
//                         title: Text(ssid.ssid),
//                         subtitle: Text(
//                             "Enabled: ${ssid.enable ? 'Yes' : 'No'} | Status: ${ssid.status ? 'Active' : 'Inactive'}\nBeacon Type: ${ssid.beaconType}"),
//                       ),
//                     );
//                   }),
//                   const SizedBox(height: 20),
//                   const Text("Connected Hosts:",
//                       style:
//                           TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
//                   // Display Hosts
//                   ...connectedDeviceModel!.hosts.entries.map((entry) {
//                     final host = entry.value;
//                     return Card(
//                       child: ListTile(
//                         title: Text(host.hostName.isNotEmpty
//                             ? host.hostName
//                             : "Unnamed Device"),
//                         subtitle: Text(
//                             "IP: ${host.ipAddress}\nMAC: ${host.macAddress}"),
//                         isThreeLine: true,
//                       ),
//                     );
//                   }),
//                 ],
//               ),
//             ),
//     );
//   }
// }
