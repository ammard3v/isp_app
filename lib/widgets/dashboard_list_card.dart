import 'package:flutter/material.dart';

class DashboardListCard extends StatelessWidget {
  const DashboardListCard(
      {super.key, required this.cardTextTitle, required this.apiTextTitle});
  final String cardTextTitle;
  final String apiTextTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 12.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          decoration: BoxDecoration(
            // gradient: AppStyles.primaryGradient,

            color: Theme.of(context).colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(12),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardTextTitle,
                ),
                Text(
                  apiTextTitle,
                )
              ],
            ),
          ),
        ));
  }
}
