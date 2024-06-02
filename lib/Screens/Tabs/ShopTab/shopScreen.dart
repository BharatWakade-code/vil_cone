import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vil_cone/Screens/Tabs/HomeTab/homeScreen.dart';
import 'package:vil_cone/Screens/homepage.dart';
import 'package:vil_cone/models/city.dart';
import 'package:vil_cone/models/constants.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    List<City> cities =
        City.citiesList.where((city) => city.isDefault == false).toList();
    List<City> selectedCities = City.getSelectedCities();

    Constants constants = Constants();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView.builder(
          itemCount: cities.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              height: size.height * 0.1,
              width: size.width,
              decoration: BoxDecoration(
                border: cities[index].isSelected == true
                    ? Border.all(
                        color: constants.secondaryColor.withOpacity(.6),
                        width: 2)
                    : Border.all(color: Colors.white),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                      color: constants.primaryColor.withOpacity(.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3))
                ],
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        cities[index].isSelected = !cities[index].isSelected;
                      });
                    },
                    child: Image.asset(
                      cities[index].isSelected == true
                          ? 'assets/images/checked.png'
                          : 'assets/images/unchecked.png',
                      width: 30,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(cities[index].city,
                      style: TextStyle(
                        fontSize: 16,
                        color: cities[index].isSelected == true
                            ? constants.primaryColor
                            : Colors.black54,
                      ))
                ],
              ),
            );
          }),
    );
  }
}
