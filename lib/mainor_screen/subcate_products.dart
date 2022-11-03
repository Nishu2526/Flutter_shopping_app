import 'package:flutter/material.dart';
import '../widgets/appbar_widgets.dart';

class SubCategoryScreen extends StatelessWidget {
  final String mainCategName;
  final String subcategName;
  const SubCategoryScreen({
    Key? key,
    required this.subcategName,
    required this.mainCategName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const AppbarBackButton(),
        title: AppbarTitle(title: subcategName),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          mainCategName,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
    );
  }
}
