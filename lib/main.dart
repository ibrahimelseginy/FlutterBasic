import 'package:flutter/material.dart';
import 'package:flutter_basics/home_screen.dart';
import 'package:flutter_basics/magazine_details_screen.dart';

void main() {
  runApp(FlutterBasics());
}

class FlutterBasics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //root Widget
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      routes: {
        Homescreen.routeName: (context) => Homescreen(),
        MagazineDetailsScreen.routeName: (context) =>
            const MagazineDetailsScreen(),
      },
      initialRoute: Homescreen.routeName,
    );
  }
}
 
