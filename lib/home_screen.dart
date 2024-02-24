/*import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //base screen
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Homescreen"),
        centerTitle: true,
        // context.read<SubjectBloc>()
        // actions: [],
      ),
      body:
          // Stack()
          // Row()
          Column(children: [
        Text(
          'Ibra',
          style: TextStyle(fontSize: 28),
        ),
        Container(
            color: Colors.red,
            child: Image.asset('assets/images/car.jpg',
                height: 100, width: 100, fit: BoxFit.cover))
      ]),
    );
  }
}
*/
/*
import 'package:flutter/material.dart';
import 'package:flutter_basic/magazin_item.dart';
import 'package:flutter_basic/title.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //base screen
        appBar: AppBar(),
        body: Column(
          children: [
            Row(
              children: [
                TitleWidget('الاخبار'),
                SizedBox(width: 4),
                // Container(width: 2),
                TitleWidget('المجلات '),
              ],
            ),
            Row(
              children: [
                MagazineItem('cars ', 'car.jpg')],
              
            ),
          ],
        ));
  }
}
*/
/*
import 'package:flutter/material.dart';
import 'package:flutter_basic/category.dart';
import 'package:flutter_basic/magazin_item.dart';
import 'package:flutter_basic/title.dart';

class Homescreen extends StatelessWidget {
  // List<Category> categories = List.filled(100, Category('cars', 'car.jpg'));
  List<Category> categories = [];

  Homescreen() {
    for (int i = 0; i < 100; i++) {
      categories.add(Category('cars $i', 'car.jpg'));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //base screen
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(children: categories.map(MapCategoryToMagazineItem).toList()
          ),
          )
          );
              
        
  }
}

MagazineItem MapCategoryToMagazineItem(Category category) {
  return MagazineItem(category);
}
*/
/*
import 'package:flutter/material.dart';
import 'package:flutter_basic/category.dart';
import 'package:flutter_basic/magazin_item.dart';
import 'package:flutter_basic/title.dart';

class Homescreen extends StatelessWidget {
  // List<Category> categories = List.filled(100, Category('cars', 'car.jpg'));
  List<Category> categories = [];

  Homescreen() {
    for (int i = 0; i < 100; i++) {
      categories.add(Category('cars $i', 'car.jpg'));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //base screen
        appBar: AppBar(),
        body: Column(
          children: [
            Row(
              children: [
                TitleWidget('الاخبار'),
                SizedBox(width: 4),
                // Container(width: 2),
                TitleWidget('المجلات '),
              ],
            ),
            // Expanded => (Column , row )
            Expanded(
              child: 
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 4 / 3,
                  // mainAxisSpacing: 9,
                  // crossAxisSpacing: 9
                ),
                itemBuilder: buildMagazineItem,
                itemCount: categories.length,
              ),
            )
          ],
        ));

    // ListView.builder(itemBuilder: buildMagazineItem ,itemCount: categories.length,));
  }

  MagazineItem buildMagazineItem(BuildContext context, int index) {
    return MagazineItem(categories[index]);
  }
}
*/
/*
import 'package:flutter/material.dart';
import 'package:flutter_basic/category.dart';
import 'package:flutter_basic/magazin_item.dart';
import 'package:flutter_basic/title.dart';

class Homescreen extends StatelessWidget {
  // List<Category> categories = List.filled(100, Category('cars', 'car.jpg'));
  List<Category> categories = [];

  Homescreen() {
    for (int i = 0; i < 100; i++) {
      categories.add(Category('cars $i', 'car.jpg'));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //base screen
        appBar: AppBar(),
        body: Column(
          children: [
            Row(
              children: [
                TitleWidget('الاخبار'),
                SizedBox(width: 4),
                // Container(width: 2),
                TitleWidget('المجلات '),
              ],
            ),
            // Expanded => (Column , row )
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 4 / 3,
                  // mainAxisSpacing: 9,
                  // crossAxisSpacing: 9
                ),
                itemBuilder: buildMagazineItem, //passing function
                itemCount: categories.length,
              ),
            )
          ],
        ));

    // ListView.builder(itemBuilder: buildMagazineItem ,itemCount: categories.length,));
  }

// function declearation
  MagazineItem buildMagazineItem(BuildContext context, int index) {
    return MagazineItem(categories[index]);
  }
}
*/

import 'package:flutter/material.dart';
import 'package:flutter_basic/category.dart';
import 'package:flutter_basic/magazin_item.dart';
import 'package:flutter_basic/title.dart';

class Homescreen extends StatelessWidget {
  static const String routeName = 'home';

  // List<Category> categories = List.filled(100, Category('cars', 'car.jpg'));
  List<Category> categories = [];

  Homescreen({super.key}) {
    for (int i = 0; i < 100; i++) {
      categories.add(Category('cars $i', 'car.jpg'));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //base screen
        appBar: AppBar(),
        body: Column(
          children: [
            Row(
              children: [
                TitleWidget('الاخبار'),
                const SizedBox(width: 4),
                // Container(width: 2),
                TitleWidget('المجلات '),
              ],
            ),
            // Expanded => (Column , row )
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 4 / 3,
                  // mainAxisSpacing: 9,
                  // crossAxisSpacing: 9
                ),
                // function anyonums (arrow function)
                // () =>   single_line,() {}  multi_line
                itemBuilder: (context, index) =>
                    MagazineItem(categories[index]),

                itemCount: categories.length,
              ),
            )
          ],
        ));

    // ListView.builder(itemBuilder: buildMagazineItem ,itemCount: categories.length,));
  }

// function declearation (not anyonums)
//   MagazineItem buildMagazineItem(BuildContext context, int index) {
//     return MagazineItem(categories[index]);
//   }
//
}
