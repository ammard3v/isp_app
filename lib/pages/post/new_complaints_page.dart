import 'package:flutter/material.dart';
import 'package:demo_isp_app/init_getit.dart';
import 'package:demo_isp_app/services/navigation_service.dart';
import 'package:demo_isp_app/viewmodels/auth_view_model.dart';
import 'package:demo_isp_app/widgets/app_styles.dart';
import 'package:demo_isp_app/widgets/form_control_container.dart';
import 'package:provider/provider.dart';

class NewComplaintsPage extends StatefulWidget {
  const NewComplaintsPage({super.key});

  @override
  State<NewComplaintsPage> createState() => _NewComplaintsPageState();
}

class _NewComplaintsPageState extends State<NewComplaintsPage> {
  final _complaintType = TextEditingController();
  final _complaintMessage = TextEditingController();

  bool isLoading = false;

  Future<void> _submitComplaint() async {
    final complaintType = _complaintType.text.trim();
    final complaintMessage = _complaintMessage.text.trim();

    if (complaintType.isEmpty || complaintMessage.isEmpty) {
      getIt<NavigationService>().showSnackbar('Fill all required fields.');
      return;
    }

    setState(() {
      isLoading = true;
    });

    final authViewModel = Provider.of<AuthViewModel>(context, listen: false);
    final data = {
      'complaintType': complaintType,
      'complaintMessage': complaintMessage,
    };

    final success = await authViewModel.newComplaint(data);

    setState(() {
      isLoading = false;
    });

    if (success) {
      getIt<NavigationService>().showSnackbar('Complaint Registered.');
      _complaintType.clear();
      _complaintMessage.clear();
    } else {
      getIt<NavigationService>().showSnackbar('Complaint Not Registered');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('New Complaints Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: isDark
                      ? Colors.black.withOpacity(0.6)
                      : Colors.grey.shade300,
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GradientText(
                  'Enter the Complaints',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: theme.textTheme.titleLarge?.color,
                  ),
                ),
                const SizedBox(height: 20),
                FormControlContainer(
                  obscureText: false,
                  hintText: 'Complaint Type',
                  controller: _complaintType,
                ),
                const SizedBox(height: 10),
                FormControlContainer(
                  obscureText: false,
                  hintText: 'Complaint Message',
                  controller: _complaintMessage,
                  maxLines: 4,
                ),
                const SizedBox(height: 20),
                isLoading
                    ? const CircularProgressIndicator()
                    : InkWell(
                        onTap: _submitComplaint,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0XFF2D3194),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 50,
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: const Text(
                            'Submit Complaint',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
