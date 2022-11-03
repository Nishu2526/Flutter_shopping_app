// ignore_for_file: non_constant_identifier_names

import 'package:bottomnavigation/widgets/categ_widgets.dart';
import 'package:flutter/material.dart';

import '../utilies/cate_list.dart';



class PhoneCategory extends StatelessWidget {
  const PhoneCategory({Key? key}) : super(key: key);

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
                    headerLabel: 'Phone',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.68,
                    child: GridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 40,
                        // crossAxisSpacing: 20,
                        children: List.generate(phone.length, (index) {
                          return SubcategoryModal(
                            mainCategoryName: 'phone',
                            subCategoryName: phone[index],
                            assetName: 'images/phone/phone$index.jpg',
                            subCategorylabel: phone[index],
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
                  mainCategoryName: 'phone',
                ),
              ))
        ],
      ),
    );
  }
}


