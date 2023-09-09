import 'package:flutter/material.dart';
import 'package:sat_flutter_basics/ui/screens/magazines_screen/magzines_screen.dart';
import 'package:sat_flutter_basics/ui/screens/register/register_screen.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = "login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, HomeScreen.routeName);
                },
                child: Text("Navigate to Home")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RegisterScreen.routeName);
                },
                child: Text("Navigate to Register"))
          ],
        ),
      ),
    );
  }
}
