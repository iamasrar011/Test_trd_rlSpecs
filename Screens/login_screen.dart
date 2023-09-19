import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement your login screen UI here
   return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Algorithmic Trading!',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            // Add login form fields and buttons here
          ],
        ),
      ),
    );
  }
}
