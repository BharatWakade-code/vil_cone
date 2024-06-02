import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Colors.grey.shade300,
          ),
          onPressed: () {},
          icon: Icon(Icons.grade_outlined),
        ),
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Colors.grey.shade300,
          ),
          onPressed: () {},
          icon: Icon(Icons.notifications),
        ),
      ],
    );
  }
}
