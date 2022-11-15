import 'package:bottomnavigation/widgets/appbar_widgets.dart';
import 'package:flutter/material.dart';

class SupplierOrders extends StatelessWidget {
  const SupplierOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const AppbarTitle(
          title: 'Supplier Orders',
        ),
        leading: const AppbarBackButton(),
      ),
    );
  }
}
