import 'package:flutter/material.dart';
import 'package:flutter_basics/category.dart';
import 'package:flutter_basics/magazin_item.dart';
import 'package:flutter_basics/title.dart';

class Homescreen extends StatelessWidget {
  static const String routeName = 'home';

  // List<Category> categories = List.filled(100, Category('cars', 'car.jpg'));
  List<Category> categories = [];

  Homescreen({super.key}) {
    for (int i = 0; i < 1000; i++) {
      categories.add(Category('cars $i', 'car.jpg'));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //base screen
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Row(
            children: [
              TitleWidget('الاخبار'),
              // Container(width: 2),
              const SizedBox(width: 4),
              TitleWidget('المجلات '),
            ],
          ),
          /*            
             body: SingleChildScrollView(
               child: Column(children: categories.map(MapCategoryToMagazineItem).toList()
            
            MagazineItem MapCategoryToMagazineItem(Category category) {
              return MagazineItem(category);

            MagazineItem buildMagazineItem(BuildContext context, int index) {
              return MagazineItem(categories[index]);
          */
          // Expanded => (Column , row )
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 4 / 3,
                // mainAxisExtent: 2,
                // mainAxisSpacing: 9,
                // crossAxisSpacing: 9
              ),
              // function anyonums (arrow function)
              // () =>   single_line,() {}  multi_line
              itemBuilder: (context, index) => MagazineItem(categories[index]),
              itemCount: categories.length,
            ),
          )
        ],
      ),
    );
  }
  // function declearation (not anyonums)
  //   MagazineItem buildMagazineItem(BuildContext context, int index) {
  //     return MagazineItem(categories[index]);
  //   }
  //
}
