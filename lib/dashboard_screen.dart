import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  final String username;
  final TextEditingController usernameController;
  final TextEditingController passwordController;

  DashboardScreen(this.username, this.usernameController, this.passwordController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fresher Bot')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Welcome, $username!', style: TextStyle(fontSize: 24)),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Clear the text fields
                  usernameController.clear();
                  passwordController.clear();
                  // Navigate back to login screen
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red, // Red color for logout button
                ),
                child: Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
