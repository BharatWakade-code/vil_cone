import 'package:flutter/material.dart';
import 'package:vil_cone/Components/logintextfield.dart';

import '../Components/loginsignupbutton.dart';
import '../Components/squaretile.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  //Controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  //OntapSignIn

  void SignInUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
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

              //UserName
              MyTextField(
                controller: usernameController,
                hintText: "UserName",
                obscureText: false,
              ),
              SizedBox(
                height: 10,
              ),
              //Password
              MyTextField(
                controller: passwordController,
                hintText: "Password",
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
              ),
              SizedBox(
                height: 10,
              ),

              //SignBtn
              SignBtn(
                ontap: () => SignInUser,
              ),
              SizedBox(
                height: 10,
              ),

              //Divider
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[500],
                      ),
                    ),
                    Text('Or Continue With',
                        style: TextStyle(color: Colors.grey[700])),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[500],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagepath: "assets/images/ic_facebook.png"),
                  SizedBox(
                    width: 10,
                  ),
                  SquareTile(imagepath: "assets/images/ic_google.png"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a Member ?"),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Register Now",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
