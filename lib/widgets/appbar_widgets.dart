import 'package:flutter/material.dart';


class AppbarBackButton extends StatelessWidget {
  const AppbarBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back_ios_new,
        color: Colors.black,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}


class AppbarTitle extends StatelessWidget {
  final String title;
  const AppbarTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
          title.toString(),
          style:
          const TextStyle(
              color: Colors.black,
              fontFamily: 'Acme',
              fontSize: 24,
              fontWeight: FontWeight.w600,
              letterSpacing: 2.0),
        );

  }
}
