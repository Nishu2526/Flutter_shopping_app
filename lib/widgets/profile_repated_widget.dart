
import 'package:flutter/material.dart';

class ProfileRepeatedListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icons;
  final Function()? onPressed;
  const ProfileRepeatedListTile(
      {Key? key,
      required this.title,
      this.subtitle = '',
      required this.icons,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child:  ListTile(
        leading: Icon(icons),
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}
