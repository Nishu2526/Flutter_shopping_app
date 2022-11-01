import 'package:bottomnavigation/categories/beauty_categ.dart';
import 'package:bottomnavigation/categories/elecronics_categ.dart';
import 'package:bottomnavigation/categories/men_categ.dart';
import 'package:bottomnavigation/categories/women_categ.dart';
import 'package:bottomnavigation/widgets/fake_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  // List of items for sideNavigationBar
  List<ItemsData> items = [
    ItemsData(label: 'Men'),
    ItemsData(label: 'Women'),
    // ItemsData(label: 'Kids'),
    // ItemsData(label: 'Home & Garden'),
    ItemsData(label: 'Electronics'),
    // ItemsData(label: ' Accessories'),
    ItemsData(label: 'Beauty'),
    // ItemsData(label: 'Kitchen'),
  ];

  final PageController _pageController = PageController();

  @override
  void initState() {
    for (var elements in items) {
      elements.isSelected = false;
    }
    setState(() {
      items[0].isSelected = true;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark),
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80,

        // Here we use Search Button Class
        title: const FakeSearch(),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: sideNavigation(size),
          ),
          Positioned(bottom: 0, right: 0, child: categoryView(size))
        ],
      ),
    );
  }

  //  Create Side NavigationBar Widget function

  Widget sideNavigation(Size size) {
    return SizedBox(
      height: size.height * 0.8,
      width: size.width * 0.2,
      child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                _pageController.animateToPage(index,
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.bounceIn);
                // // Here for keyword used for same color of  unselected Container
                // for (var element in items){
                //   element.isSelected = false;
                // }
                // // Here setState  used for different color of  selected Container
                // setState(() {
                //   items[index].isSelected = true;
                // });
              },
              child: Container(
                  color: items[index].isSelected == true
                      ? Colors.white
                      : Colors.grey.shade300,
                  height: 100,
                  child: Center(child: Text(items[index].label))),
            );
          }),
    );
  }

// Category view function
  Widget categoryView(Size size) {
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.8,
      color: Colors.white,
      child: Center(
          child: PageView(
        scrollDirection: Axis.vertical,
        controller: _pageController,
        onPageChanged: (value) {
          for (var element in items) {
            element.isSelected = false;
          }
          // Here setState  used for different color of  selected Container
          setState(() {
            items[value].isSelected = true;
          });
        },
        children: const [
          MenCategory(),
          WomenCategory(),
          // Center(
          //     child: Text(
          //   'Kids Category',
          //   style: TextStyle(fontSize: 30),
          // )),
          // Center(
          //     child: Text(
          //   'Home & Garden',
          //   style: TextStyle(fontSize: 30),
          // )),
           ElectronicCategory(),
          // Center(
          //     child: Text(
          //   'Accessories',
          //   style: TextStyle(fontSize: 30),
          // )),
          BeautyCategory(),
          // Center(
          //     child: Text(
          //   'Kitchen',
          //   style: TextStyle(fontSize: 30),
          // )),
        ],
      )),
    );
  }
}

//Custom Widget
class ItemsData {
  String label;
  bool isSelected;
  ItemsData({required this.label, this.isSelected = false});
}
