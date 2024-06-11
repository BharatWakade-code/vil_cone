import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vil_cone/Screens/Details_Page/details_appbar.dart';
import 'package:vil_cone/Screens/Details_Page/imageslider.dart';
import 'package:vil_cone/models/products.dart';

class DetailsScreen extends StatefulWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int currentimage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Custom App Bar
          DetailsAppBar(),
          //Imagge Slider
          MyImageSlider(
            image: widget.product.image,
            onChange: (index) {
              setState(() {
                currentimage = index;
              });
            },
          ),
        ],
      ),
    );
  }
}
