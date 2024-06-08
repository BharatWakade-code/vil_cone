import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 220,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              physics: ClampingScrollPhysics(),
              children: [
                Image.asset(
                  "assets/images/slider.jpg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/nike2.png",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/nike3.png",
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
