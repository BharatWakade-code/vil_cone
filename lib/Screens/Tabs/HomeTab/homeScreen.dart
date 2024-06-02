import 'package:flutter/material.dart';
import 'package:vil_cone/Components/category.dart';
import 'package:vil_cone/Components/customappbarforhomepage.dart';
import 'package:vil_cone/Components/image_slider.dart';
import 'package:vil_cone/Components/searchbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomAppBar(),
              MySearchBar(),
              SizedBox(
                height: 25,
              ),
              ImageSlider(),
              SizedBox(
                height: 25,
              ),
              CategoryList()
            ],
          ),
        ),
      ),
    );
  }
}
