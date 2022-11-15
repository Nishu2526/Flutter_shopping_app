import 'package:bottomnavigation/dashboard_components/edit_supplier_profile.dart';
import 'package:bottomnavigation/dashboard_components/mystore.dart';
import 'package:bottomnavigation/dashboard_components/setting.dart';
import 'package:bottomnavigation/dashboard_components/static_screen.dart';
import 'package:bottomnavigation/dashboard_components/supp_balance.dart';
import 'package:bottomnavigation/dashboard_components/supplier_orders.dart';
import 'package:bottomnavigation/widgets/appbar_widgets.dart';
import 'package:flutter/material.dart';

List<String> label = [
  'my store',
  'orders',
  'edit profile',
  'setting',
  'balance',
  'static'
];

List<IconData> icons = [
  Icons.store,
  Icons.shop_2_outlined,
  Icons.edit,
  Icons.settings,
  Icons.attach_money,
  Icons.show_chart,
];

List<Widget> pages = [
  const MyStore(),
  const SupplierOrders(),
  const EditBusiness(),
  const ManageProducts(),
  const BalanceScreen(),
  const StaticScreen(),
];

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const AppbarTitle(title: 'Dashboard'),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '?welcome_screen');
                },
                icon: const Icon(
                  Icons.logout,
                  color: Colors.black,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: GridView.count(
              mainAxisSpacing: 50,
              crossAxisSpacing: 50,
              crossAxisCount: 2,
              children: List.generate(6, (index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => pages[index]));
                  },
                  child: Card(
                    elevation: 20,
                    color: Colors.blueGrey.withOpacity(0.7),
                    shadowColor: Colors.purpleAccent.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          icons[index],
                          color: Colors.yellow,
                          size: 50,
                        ),
                        Text(
                          label[index].toUpperCase(),
                          style: const TextStyle(
                              fontSize: 25,
                              letterSpacing: 2,
                              color: Colors.yellowAccent,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Acme'),
                        )
                      ],
                    ),
                  ),
                );
              })),
        ));
  }
}
