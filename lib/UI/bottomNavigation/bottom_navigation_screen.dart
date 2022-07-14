import 'package:flunace/Consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../cartScreen/cart_screen.dart';
import '../historyScreen/history_screen.dart';
import '../homeScreen/home_screen.dart';
import '../settingsScreen/settings_screen.dart';
import '../storeScreen/store_screen.dart';



class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _currentIndex = 2;

  final List<Widget> _pages= [
    const HomeScreen(),
    const HistoryScreen(),
    const StoreScreen(),
    const CartScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],

      bottomNavigationBar:  CurvedNavigationBar(
        height: 50.0,
        buttonBackgroundColor: kMainOrange,
        backgroundColor: Colors.transparent,
        items: [
          Icon(Icons.explore,),
          Icon(Icons.receipt,),
          Icon(Icons.storefront,),
          Icon(Icons.shopping_cart,),
          Icon(Icons.settings),
        ],

        onTap: (index) => setState(() => _currentIndex = index),
        //other params
      ),
    );
  }
}
