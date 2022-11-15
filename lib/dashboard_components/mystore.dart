import 'package:bottomnavigation/widgets/appbar_widgets.dart';
import 'package:flutter/material.dart';

class MyStore extends StatelessWidget {
  const MyStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const AppbarTitle(
          title: 'My Store',
        ),
        leading: const AppbarBackButton(),
      ),
    );
  }
}
