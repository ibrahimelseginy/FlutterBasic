import 'package:flutter/material.dart';
import 'package:flutter_basics/category.dart';
import 'package:flutter_basics/magazine_details_screen.dart';

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
          // Container(
          //   margin: const EdgeInsets.only(right: 4, bottom: 6),
          //   padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
          //   color: const Color(0xFF8529BA).withOpacity(0.5),
          //   child: Text(
          //     category.title,
          //     style: const TextStyle(color: Colors.white, fontSize: 18),
          //   ),
          // ),

          // Buttons

          // first button

          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => const MagazineDetailsScreen(),
              ));
              // Navigator.of(context).pushReplacement();
              // Navigator.of(context).pushReplacementNamed('Magazine_details');
              // Navigator.of(context).pushNamed(MagazineDetailsScreen.routeName);
            },

            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF8529BA).withOpacity(0.5)),
            child: const Text(
              'Car',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            // style: ButtonStyle(),
          )
          /*
          // second button
          TextButton( 
            onPressed: () {},
            child: Text('login'),
            // style: ElevatedButton.styleFrom(),
            // style: ButtonStyle(),)
          )
   
          // third button
          OutlinedButton(
            onPressed: () {},
            child: Text('login'),
            // style: ElevatedButton.styleFrom(),
            // style: ButtonStyle(),)
          )  
          // fourth button
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.access_alarm_rounded,
              color: Colors.amber,
            ),
          )*/
        ],
      ),
    );
  }

  // void login() {
  //   //login logic
  // }
}
