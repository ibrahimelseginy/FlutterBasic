import 'package:flutter/material.dart';
import 'package:flutter_basic/home_screen.dart';
import 'package:flutter_basic/magazine_details_screen.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //root Widget
      // home: Homescreen(),
      routes: {
        // 'home': (context) => Homescreen(),
        // 'Magazine_details': (context) => MagazineDetailsScreen(),
        Homescreen.routeName: (context) => Homescreen(),
        MagazineDetailsScreen.routeName: (context) =>
            const MagazineDetailsScreen(),
      },
      initialRoute: Homescreen.routeName,
    );
  }
}
