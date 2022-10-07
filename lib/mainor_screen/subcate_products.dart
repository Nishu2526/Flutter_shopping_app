import 'package:flutter/material.dart';

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
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          subcategName,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          mainCategName,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
    );
  }
}
