import 'package:flutter/material.dart';
import '../../models/get/user_ledger_model.dart';
import '../../viewmodels/auth_view_model.dart';
import 'package:provider/provider.dart';

class UserLedgerPage extends StatefulWidget {
  const UserLedgerPage({super.key});

  @override
  State<UserLedgerPage> createState() => _UserLedgerPageState();
}

class _UserLedgerPageState extends State<UserLedgerPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<AuthViewModel>(context, listen: false).fetchUserLedger();
    });
  }

  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);
    final userLedger = authViewModel.userLedgerModel;
    final userLedgerList = userLedger?.data ?? [];

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Ledger'),
      ),
      body: authViewModel.loading
          ? const Center(child: CircularProgressIndicator())
          : userLedger == null
              ? const Center(child: Text('No User Ledger data'))
              : Column(
                  children: [
                    _buildUserLedgerContent(userLedger),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.all(16),
                        itemCount: userLedgerList.length,
                        itemBuilder: (context, index) {
                          final transaction = userLedgerList[index];
                          return UserLedgerCard(list: transaction);
                        },
                      ),
                    ),
                  ],
                ),
    );
  }

  Widget _buildUserLedgerContent(UserLedgerModel userLedger) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(height: 20),
          _buildDataCard('Total Debit', userLedger.totalDebit.toString()),
          _buildDataCard('Total Credit', userLedger.totalCredit.toString()),
          _buildDataCard(
              'Remaining Balance', userLedger.remainingBalance.toString()),
        ],
      ),
    );
  }

  Widget _buildDataCard(String title, String value) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            const Spacer(),
            Text(value),
          ],
        ),
      ),
    );
  }
}

class UserLedgerCard extends StatelessWidget {
  final Transaction list;

  const UserLedgerCard({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Transaction No: ${list.transactionNo}',
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            _buildRow('Date', list.date),
            _buildRow('Type', list.type),
            _buildRow('Debit', list.dr),
            _buildRow('Credit', list.cr.toString()),
            _buildRow('Created At', list.createdAt.split('T').first),
            if ((list.notes ?? '').isNotEmpty)
              _buildRow('Notes', list.notes ?? ''),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        children: [
          Text(
            '$title: ',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
