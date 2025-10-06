import 'package:flutter/material.dart';
import 'package:demo_isp_app/viewmodels/auth_view_model.dart';
import 'package:provider/provider.dart';

class ComplaintListPage extends StatefulWidget {
  const ComplaintListPage({super.key});

  @override
  State<ComplaintListPage> createState() => _ComplaintListPageState();
}

class _ComplaintListPageState extends State<ComplaintListPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<AuthViewModel>(context, listen: false).fetchComplaints();
    });
  }

  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);
    final complaints = authViewModel.complaintListData?.data ?? [];
    final isLoading = authViewModel.loading;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Complaints List'),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : complaints.isEmpty
              ? const Center(child: Text('No complaints found.'))
              : ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: complaints.length,
                  itemBuilder: (context, index) {
                    final complaint = complaints[index];
                    return ComplaintCard(complaint: complaint);
                  },
                ),
    );
  }
}

class ComplaintCard extends StatelessWidget {
  final dynamic complaint;

  const ComplaintCard({super.key, required this.complaint});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              complaint.slaTitle ?? 'No Title',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            if ((complaint.slaMsg ?? '').isNotEmpty)
              Text(
                complaint.slaMsg ?? '',
                style: const TextStyle(fontSize: 14, color: Colors.black87),
              ),
            const SizedBox(height: 12),
            _buildRow('Status', complaint.status ?? ''),
            _buildRow(
                'Created At', complaint.createdAt?.split('T').first ?? ''),
            _buildRow('Zone', complaint.zoneName ?? ''),
            if ((complaint.statusMsg ?? '').isNotEmpty)
              _buildRow('Status Message', complaint.statusMsg ?? ''),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Expanded(
            child: Text(
              '$label:',
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          Flexible(
            child: Text(
              value,
              textAlign: TextAlign.right,
              style: const TextStyle(color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
