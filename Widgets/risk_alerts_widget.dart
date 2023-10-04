import 'package:flutter/material.dart';

class RiskAlertsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Risk alerts widget UI components go here
      child: Column(
        children: [
          // Risk alerts title
          Text(
            'Risk Alerts',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16), // Spacer

          // Display risk alerts using a ListView.builder
          Expanded(
            child: ListView.builder(
              itemCount: /* Replace with the number of risk alerts */,
              itemBuilder: (context, index) {
                // Create a widget to display an individual risk alert
                return RiskAlertItemWidget(
                  alertTitle: 'Market Volatility Alert', // Replace with actual alert title
                  alertDescription: 'High volatility detected in your portfolio.', // Replace with actual alert description
                  alertTime: DateTime.now(), // Replace with actual alert timestamp
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Define a RiskAlertItemWidget to represent individual risk alerts
class RiskAlertItemWidget extends StatelessWidget {
  final String alertTitle;
  final String alertDescription;
  final DateTime alertTime;

  RiskAlertItemWidget({
    required this.alertTitle,
    required this.alertDescription,
    required this.alertTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Risk alert UI components go here
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Display risk alert data
          Text(
            alertTitle,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8), // Spacer
          Text(
            alertDescription,
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Alert Time: ${DateFormat.yMMMd().add_jm().format(alertTime)}', // Format the timestamp as needed
            style: TextStyle(fontSize: 16),
          ),
          // Add more fields and UI components to display other risk alert data
        ],
      ),
    );
  }
}
