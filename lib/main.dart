// import 'package:bottomnavigation/mainScreen/customer_home_page.dart';
// import 'package:bottomnavigation/mainScreen/supplier_home_screen.dart';
import 'package:bottomnavigation/mainScreen/welcome_screen.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

// import 'mainScreen/customer_home_page.dart';

void main() {
  runApp( const MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.blue,
    statusBarIconBrightness: Brightness.dark,// navigation bar color
    statusBarColor: Colors.transparent, // status bar color
  ));
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:  const WelcomeScreen(),
      //  SupplierHomeScreen(title: 'Supplier'),
        // CustomerHomePage(title: '')
    );
  }
}


