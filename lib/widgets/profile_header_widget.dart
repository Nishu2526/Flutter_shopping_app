import 'package:flutter/material.dart';

class ProfileHeaderLabel extends StatelessWidget {
  final String headerLabel;
  const ProfileHeaderLabel({Key? key, required this.headerLabel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
            width: 50,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                thickness: 1,
                color: Colors.grey,
              ),
            ),
          ),
          Text(headerLabel, style: const TextStyle(fontSize: 24),),
          const SizedBox(
            height: 40,
            width: 50,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
