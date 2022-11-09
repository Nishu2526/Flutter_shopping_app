// import 'package:flutter/cupertino.dart';
import 'package:bottomnavigation/widgets/fake_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _tabController =
        TabController(length: _myTabs.length, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark),
        backgroundColor: Colors.white,
        elevation: 0,

        // Here we use Search Button Class
        title: const FakeSearch(),
        toolbarHeight: 60,
        bottom: TabBar(
          isScrollable: true,
          indicatorWeight: 2,
          indicatorColor: Colors.yellow,
          controller: _tabController,
          tabs: _myTabs,
        ),
      ),

      // This is TabBarView Widget
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(
            child: Text('Men Screen'),
          ),
          Center(
            child: Text('Women Screen'),
          ),
          Center(
            child: Text('Shoes Screen'),
          ),
          Center(
            child: Text('Electronic Screen'),
          ),
          Center(
            child: Text('Kitchen Screen'),
          ),
          Center(
            child: Text('Decoration Screen'),
          ),
          Center(
            child: Text('Causmetic Screen'),
          ),
        ],
      ),
    );
  }
}

// Create class for tabs category
class RepetedTab extends StatelessWidget {
  final String label;
  const RepetedTab({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        label,
        style: const TextStyle(
            color: Colors.blueGrey,
            fontWeight: FontWeight.w600,
            fontSize: 16,
            letterSpacing: 2),
      ),
    );
  }
}
// Create class for tabs category

//List of TabBar category
final List<Widget> _myTabs = [
  const RepetedTab(label: 'Men'),
  const RepetedTab(label: 'Women'),
  const RepetedTab(label: 'Kids'),
  const RepetedTab(label: 'Accessories'),
  const RepetedTab(label: 'Home & Decoration'),
  const RepetedTab(label: 'Electronics'),
  const RepetedTab(label: 'Beauty'),
];
//List of TabBar category
