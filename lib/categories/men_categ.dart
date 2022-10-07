import 'package:flutter/material.dart';
import 'package:bottomnavigation/utilies/cate_list.dart';

import '../mainor_screen/subcate_products.dart';

class MenCategory extends StatelessWidget {
  const MenCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(30),
          child: Text(
            'Men',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, letterSpacing: 2),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.68,
          child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 40,
              // crossAxisSpacing: 20,
              children: List.generate(men.length, (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SubCategoryScreen(
                                  subcategName: men[index],
                                  mainCategName: 'Men',
                                )));
                  },
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            color: Colors.grey.shade400,
                            height: 100,
                            width: 100,
                            child: Image(
                              image: AssetImage('images/men/men$index.jpg'),
                            )),
                        Text(men[index])
                      ]),
                );
              })),
        ),
      ],
    );
  }
}
