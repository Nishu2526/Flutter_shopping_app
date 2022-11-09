import 'package:flutter/material.dart';

class YellowDiver extends StatelessWidget {
  const YellowDiver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Divider(
        color: Colors.yellow,
        thickness: 2,
      ),
    );
  }
}
