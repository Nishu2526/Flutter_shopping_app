import 'package:flutter/material.dart';

import '../mainor_screen/search.dart';

class FakeSearch extends StatelessWidget {
  const FakeSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchScreen()));
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.yellow, width: 1.6),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'What are you looking for?',
                  style: TextStyle(fontSize: 20, color: Colors.grey, letterSpacing: 1),
                ),
              ],
            ),
            Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.yellow, borderRadius: BorderRadius.circular(50),
              ),
              child: const Center(
                child: Text(
                  'Search',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
