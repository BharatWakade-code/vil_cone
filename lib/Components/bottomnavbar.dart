import 'package:flutter/material.dart';
import 'package:vil_cone/Screens/Tabs/AccountTab/accountTab.dart';
import 'package:vil_cone/Screens/Tabs/HomeTab/homeScreen.dart';
import 'package:vil_cone/Screens/Tabs/ShopTab/shopScreen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentindex = 0;
  List screens = [
    Scaffold(),
    Scaffold(),
    HomeScreen(),
    ShopScreen(),
    AccountTab()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentindex = 2;
          });
        },
        shape: const CircleBorder(),
        backgroundColor: Colors.red[400],
        child: const Icon(
          Icons.home,
          color: Colors.white,
          size: 25,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  currentindex = 0;
                });
              },
              icon: Icon(Icons.grid_view_outlined,
                  size: 30,
                  color:
                      currentindex == 0 ? Colors.red[300] : Colors.grey[400]),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentindex = 1;
                });
              },
              icon: Icon(Icons.favorite_border,
                  size: 30,
                  color:
                      currentindex == 1 ? Colors.red[300] : Colors.grey[400]),
            ),
            const SizedBox(
              width: 15,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentindex = 3;
                });
              },
              icon: Icon(Icons.shopping_cart_outlined,
                  size: 30,
                  color:
                      currentindex == 3 ? Colors.red[300] : Colors.grey[400]),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentindex = 4;
                });
              },
              icon: Icon(Icons.person,
                  size: 30,
                  color:
                      currentindex == 4 ? Colors.red[300] : Colors.grey[400]),
            ),
          ],
        ),
      ),
      body: screens[currentindex],
    );
  }
}
