import 'package:flutter/material.dart';
import '../../models/get/ssid_host_model.dart';
import '../../viewmodels/auth_view_model.dart';
import 'package:provider/provider.dart';

class SSIDHostPage extends StatefulWidget {
  const SSIDHostPage({super.key});

  @override
  State<SSIDHostPage> createState() => _SSIDHostPageState();
}

class _SSIDHostPageState extends State<SSIDHostPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<AuthViewModel>(context, listen: false).fetchSSIDHostList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);
    final ssidhostData = authViewModel.ssidhostData;

    return Scaffold(
      appBar: AppBar(
        title: const Text('SSID Host List'),
      ),
      body: authViewModel.loading
          ? const Center(child: CircularProgressIndicator())
          : ssidhostData == null
              ? const Center(child: Text('No SSID/Host data'))
              : SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSSIDList(ssidhostData),
                      const SizedBox(height: 30),
                      _buildHostList(ssidhostData),
                    ],
                  ),
                ),
    );
  }

  /// Build SSID List Section
  Widget _buildSSIDList(SsidHostModel ssidhostData) {
    final ssidMap = ssidhostData.data?.ssid;

    if (ssidMap == null || ssidMap.isEmpty) {
      return const Text('No SSID data available.');
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Available SSIDs:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        ...ssidMap.entries.map((entry) {
          final ssidItem = entry.value;
          return _buildSsidCard(entry.key, ssidItem);
        }),
      ],
    );
  }

  Widget _buildSsidCard(String key, SsidItem ssidItem) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('SSID Key: $key',
                style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            _buildDataRow('SSID', ssidItem.ssid ?? 'N/A'),
            _buildDataRow('Enabled', ssidItem.enable == true ? 'Yes' : 'No'),
            _buildDataRow(
                'Status', ssidItem.status == true ? 'Active' : 'Inactive'),
            _buildDataRow('Beacon Type', ssidItem.beaconType ?? 'N/A'),
          ],
        ),
      ),
    );
  }

  /// Build Host List Section
  Widget _buildHostList(SsidHostModel ssidhostData) {
    final hostMap = ssidhostData.data?.hosts;

    if (hostMap == null || hostMap.isEmpty) {
      return const Text('No host data available.');
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Connected Hosts:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        ...hostMap.entries.map((entry) {
          final host = entry.value;
          return _buildHostCard(entry.key, host);
        }),
      ],
    );
  }

  Widget _buildHostCard(String key, Host host) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Host Key: $key',
                style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            _buildDataRow('Hostname', host.hostName ?? 'N/A'),
            _buildDataRow('IP Address', host.ipAddress ?? 'N/A'),
            _buildDataRow('MAC Address', host.macAddress ?? 'N/A'),
          ],
        ),
      ),
    );
  }

  /// Common data row widget
  Widget _buildDataRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Expanded(child: Text(label)),
          Text(value),
        ],
      ),
    );
  }
}
