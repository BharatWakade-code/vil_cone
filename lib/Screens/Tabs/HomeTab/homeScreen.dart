import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:vil_cone/Components/category.dart';
import 'package:vil_cone/Components/customappbarforhomepage.dart';
import 'package:vil_cone/Components/image_slider.dart';
import 'package:vil_cone/Components/product_card.dart';
import 'package:vil_cone/Components/searchbar.dart';
import 'package:vil_cone/models/products.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
              CategoryList(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Special For You",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              //For Shopping Items
              GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.78,
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: products.length,
                  itemBuilder: (context, Index) {
                    return ProductCard(
                      product: products[Index],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
