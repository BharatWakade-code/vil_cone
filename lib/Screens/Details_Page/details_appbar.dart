import 'package:flutter/material.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.grey[100],
              padding: const EdgeInsets.all(20),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            iconSize: 20,
            icon: const Icon(Icons.arrow_back_ios),
          ),
          Spacer(),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.grey[100],
              padding: const EdgeInsets.all(20),
            ),
            onPressed: () {},
            iconSize: 20,
            icon: const Icon(Icons.favorite),
          ),
          SizedBox(
            width: 10,
          ),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.grey[100],
              padding: const EdgeInsets.all(20),
            ),
            onPressed: () {},
            iconSize: 20,
            icon: const Icon(Icons.notifications_outlined),
          )
        ],
      ),
    );
  }
}
