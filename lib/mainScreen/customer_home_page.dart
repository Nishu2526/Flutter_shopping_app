import 'package:bottomnavigation/mainScreen/cart.dart';
import 'package:bottomnavigation/mainScreen/category.dart';
import 'package:bottomnavigation/mainScreen/home.dart';
import 'package:bottomnavigation/mainScreen/profile_screen.dart';
import 'package:bottomnavigation/mainScreen/store_screen.dart';
import 'package:flutter/material.dart';



class CustomerHomePage extends StatefulWidget {
  const CustomerHomePage({Key? key, required String title}) : super(key: key);

  @override
  State<CustomerHomePage> createState() => _CustomerHomePageState();
}

late String title;

class _CustomerHomePageState extends State<CustomerHomePage> {
  int _selectedIndex = 0;
  final List<Widget> _tabs = const [
    HomeScreen(),
    CategoryScreen(),
    StoreScreenPage(),
    CartScreenPage(),
    ProfileScreenPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: _tabs[_selectedIndex],
      //Bottom NavigationBar
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedItemColor: Colors.red[700],
        selectedFontSize: 15,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w800),
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400),
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), label: 'Home', ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Stores'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'My Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
