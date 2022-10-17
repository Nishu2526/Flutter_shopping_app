import 'package:flutter/material.dart';
import 'package:bottomnavigation/utilies/cate_list.dart';
import '../mainor_screen/subcate_products.dart';

class ElectronicCategory extends StatelessWidget {
  const ElectronicCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.75,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CategoryHeaderLevel(
                    headerLabel: 'Electronics',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.68,
                    child: GridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 40,
                        // crossAxisSpacing: 20,
                        children: List.generate(electronic.length, (index) {
                          return SubcategoryLabel(
                            mainCategoryName: 'electronic',
                            subCategoryName: electronic[index],
                            assetName: 'images/electronic/electronic$index.jpg',
                            subCategorylabel: electronic[index],
                          );
                        })),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width * 0.05,
                child: const MenSlider(
                  mainCategoryName: 'electronic',
                ),
              ))
        ],
      ),
    );
  }
}

class MenSlider extends StatelessWidget {
  final String mainCategoryName;
  const MenSlider({Key? key, required this.mainCategoryName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(50)),
        child: RotatedBox(
          quarterTurns: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                ' << ',
                style: TextStyle(fontSize: 16, letterSpacing: 10),
              ),
              Text(
                mainCategoryName.toUpperCase(),
                style: const TextStyle(fontSize: 16, letterSpacing: 10),
              ),
              const Text(
                ' >> ',
                style: TextStyle(fontSize: 16, letterSpacing: 10),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SubcategoryLabel extends StatelessWidget {
  final String mainCategoryName;
  final String subCategoryName;
  final String assetName;
  final String subCategorylabel;
  const SubcategoryLabel(
      {Key? key,
      required this.mainCategoryName,
      required this.subCategoryName,
      required this.assetName,
      required this.subCategorylabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SubCategoryScreen(
                      subcategName: subCategoryName,
                      mainCategName: mainCategoryName,
                    )));
      },
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Container(
            color: Colors.grey.shade400,
            height: 100,
            width: 100,
            child: Image(
              image: AssetImage(assetName),
            )),
        Text(subCategorylabel)
      ]),
    );
  }
}

//
class CategoryHeaderLevel extends StatelessWidget {
  final String headerLabel;
  const CategoryHeaderLevel({Key? key, required this.headerLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Text(
        headerLabel,
        style: const TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, letterSpacing: 2),
      ),
    );
  }
}
