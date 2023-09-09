import 'package:flutter/material.dart';
import 'package:sat_flutter_basics/ui/screens/magazines_screen/magzines_screen.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = "register";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
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
                  Navigator.pop(context);
                },
                child: Text("Navigate to Register"))
          ],
        ),
      ),
    );
  }
}
