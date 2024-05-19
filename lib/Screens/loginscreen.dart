import 'package:flutter/material.dart';
import 'package:vil_cone/Components/logintextfield.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            //Logo
            Icon(
              Icons.lock,
              size: 100,
            ),
            SizedBox(
              height: 50,
            ),
            Text("Welcome Back  You've Been Missed !"),
            SizedBox(
              height: 50,
            ),
            MyTextField(
              controller: usernameController,
              hintText: "UserName",
              obscureText: false,
            ),
            SizedBox(
              height: 10,
            ),
            MyTextField(
              controller: passwordController,
              hintText: "password",
              obscureText: true,
            ),
            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text("Forgot Password")],
              ),
            )
          ],
        ),
      )),
    );
  }
}
