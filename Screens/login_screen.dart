import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isLoading = false;

  Future<void> _login(BuildContext context) async {
    // Retrieve email and password from controllers
    final String email = emailController.text.trim();
    final String password = passwordController.text.trim();

    // Perform basic input validation
    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please provide both email and password.'),
        ),
      );
      return;
    }

    // Set loading state
    setState(() {
      isLoading = true;
    });

    try {
      // Simulate a login request to your authentication service
      // Replace this with actual login logic
      await AuthService.login(email, password);

      // Navigate to the dashboard screen on successful login
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => DashboardScreen(),
        ),
      );
    } catch (error) {
      // Handle login error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Login failed: $error'),
        ),
      );
    } finally {
      // Reset loading state
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Algorithmic Trading!',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: isLoading ? null : () => _login(context),
              child: isLoading
                  ? CircularProgressIndicator() // Show loading indicator
                  : Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

// Simulated AuthService class (replace with actual authentication logic)
class AuthService {
  static Future<void> login(String email, String password) async {
    // Simulate a delay to mimic a network request
    await Future.delayed(Duration(seconds: 2));

    // In a real app, you would perform actual authentication here
    // For now, we'll just simulate a successful login
    if (email == 'user@example.com' && password == 'password') {
      return;
    } else {
      throw 'Invalid credentials';
    }
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This is the dashboard screen; you can customize it as needed
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Text('Welcome to Your Dashboard'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LoginScreen(),
  ));
}
