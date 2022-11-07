// ignore_for_file: non_constant_identifier_names

import 'package:bottomnavigation/widgets/categ_widgets.dart';
import 'package:flutter/material.dart';
import 'package:bottomnavigation/utilies/cate_list.dart';

class KidsCategory extends StatelessWidget {
  const KidsCategory({Key? key}) : super(key: key);

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
                  Row(
                    children: const [
                      CategoryHeaderLevel(
                        headerLabel: 'Kids',
                      ),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(left: 5, right: 20),
                        child: Divider(
                          thickness: 2,
                        ),
                      ))
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.68,
                    child: GridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 40,
                        // crossAxisSpacing: 20,
                        children: List.generate(kids.length, (index) {
                          return SubcategoryModal(
                            mainCategoryName: 'kids',
                            subCategoryName: kids[index],
                            assetName: 'images/kids/kids$index.jpg',
                            subCategorylabel: kids[index],
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
                child: const SliderBar(
                  mainCategoryName: 'kids',
                ),
              ))
        ],
      ),
    );
  }
}
