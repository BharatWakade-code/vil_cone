import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vil_cone/Components/bottomnavbar.dart';
import 'package:vil_cone/Screens/Tabs/AccountTab/accountTab.dart';
import 'package:vil_cone/Screens/Tabs/HomeTab/homeScreen.dart';
import 'package:vil_cone/Screens/Tabs/ShopTab/shopScreen.dart';
import 'package:vil_cone/models/constants.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser;

  void SignOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
