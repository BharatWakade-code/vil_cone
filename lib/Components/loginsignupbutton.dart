import 'package:flutter/material.dart';

class SignBtn extends StatelessWidget {
  final Function()? ontap;

  SignBtn({super.key, required this.ontap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ontap,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          padding: const EdgeInsets.all(25.0),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
            child: Text(
              "Sign In",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
