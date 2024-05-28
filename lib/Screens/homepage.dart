import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vil_cone/Screens/Tabs/AccountTab/accountTab.dart';
import 'package:vil_cone/Screens/Tabs/HomeTab/homeScreen.dart';
import 'package:vil_cone/Screens/Tabs/ShopTab/shopScreen.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.grey,
            centerTitle: true,
            titleTextStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            toolbarHeight: 70,
            title: Text("Ekart"),
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: TabBar(
              padding: EdgeInsets.symmetric(vertical: 5),
              indicatorColor: Colors.transparent,
              tabs: [
                Icon(Icons.home),
                Icon(Icons.location_city),
                Icon(Icons.person_2),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomeScreen(),
              ShopScreen(),
              AccountTab(),
            ],
          ),
        ),
      ),
    );
  }
}
