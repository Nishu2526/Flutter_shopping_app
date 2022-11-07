import 'package:flutter/material.dart';
import '../mainor_screen/subcate_products.dart';

class SliderBar extends StatelessWidget {
  final String mainCategoryName;
  const SliderBar({Key? key, required this.mainCategoryName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(50)),
        child: RotatedBox(
          quarterTurns: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              mainCategoryName == 'beauty'
                  ? const Text('')
                  : const Text('<<', style: style),
              Text(mainCategoryName.toUpperCase(), style: style),
              mainCategoryName == 'men'
                  ? const Text('')
                  : const Text('>>', style: style)
            ],
          ),
        ),
      ),
    );
  }
}

const style = TextStyle(
    color: Colors.brown,
    fontWeight: FontWeight.w900,
    fontSize: 18,
    letterSpacing: 10);

class SubcategoryModal extends StatelessWidget {
  final String mainCategoryName;
  final String subCategoryName;
  final String assetName;
  final String subCategorylabel;
  const SubcategoryModal(
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
          decoration: BoxDecoration(
            color: Colors.brown[100],
            borderRadius: BorderRadius.circular(15) ),
          height: 110,
          width: 110,
          child: Image(image: AssetImage(assetName)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(subCategorylabel),
        ),
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
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
      child: Text(
        headerLabel,
        style: const TextStyle(
            fontSize: 15, fontWeight: FontWeight.bold, letterSpacing: 2),
      ),
    );
  }
}

class SubHeaderCategory extends StatelessWidget {
  final String subHeaderLabel;
  const SubHeaderCategory({Key? key, required this.subHeaderLabel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 5, bottom: 10),
      child: Text(
        subHeaderLabel,
        style: const TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, letterSpacing: 2),
      ),
    );
  }
}
