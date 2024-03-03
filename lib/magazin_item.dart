import 'package:flutter/material.dart';
import 'package:flutter_basic/category.dart';

class MagazineItem extends StatelessWidget {
  Category category;

  MagazineItem(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Image.asset(
            'assets/images/${category.imageName}',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
              margin: const EdgeInsets.only(right: 4, bottom: 6),
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              color: const Color(0xFF8529BA).withOpacity(0.5),
              child: Text(
                category.title,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ))
        ],
      ),
    );
  }

  void login() {
    //login logic
  }
}
