
import 'package:flutter/material.dart';

import 'mainScreen/customer_home_page.dart';

void main() {
  runApp( ABC());
}

class ABC extends StatelessWidget {

  const ABC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const CustomerHomePage(title: 'Shopping App',),
    );
  }
}


