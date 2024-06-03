import 'package:flutter/material.dart';

import 'buttomnavigation_screen/card_screen.dart';
import 'buttomnavigation_screen/card_tabbar_screen.dart';
import 'buttomnavigation_screen/favorite_screen.dart';
import 'buttomnavigation_screen/home_screen.dart';
import 'buttomnavigation_screen/shopping_screen.dart';
import 'buttomnavigation_screen/user_screen.dart';

class ButtomNavigationScreen extends StatefulWidget {
  const ButtomNavigationScreen({super.key});

  @override
  State<ButtomNavigationScreen> createState() => _ButtomNavigationScreenState();
}

class _ButtomNavigationScreenState extends State<ButtomNavigationScreen> {
  var _pagedata = [
    HomeScreenSecond(),
    CardTabbarScreen(),
    ShoppingScreen(),
    FavoriteScreen(),
    UserScreen()
  ];
  int _selecteditem = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pagedata[_selecteditem],
      ),
      bottomNavigationBar: Container(
        height: 70, // Adjust the height as needed
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 10)
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_sharp), label: "Card"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: "Shopping"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: "User"),
          ],
          currentIndex: _selecteditem,
          onTap: (setvalue) {
            setState(() {
              _selecteditem = setvalue;
            });
          },
        ),
      ),
    );
  }
}
