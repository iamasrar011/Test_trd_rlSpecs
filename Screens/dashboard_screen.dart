import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement your dashboard screen UI here
        return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
         child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text(
              'Welcome to Your Dashboard',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            // Display user portfolio information and widgets here
             Text('User Portfolio Information Goes Here'),
              // Add portfolio widgets and charts here
          ],
        ),
      ),
    );
  }
}
