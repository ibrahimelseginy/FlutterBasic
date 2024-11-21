import 'package:flutter/material.dart';

class MagazineDetailsScreen extends StatelessWidget {
  static const String routeName = 'Magazine_details';
  const MagazineDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MagazineDetails'),
        backgroundColor: Colors.amber,
      ),
      body: Column(children: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('pop'),
        )
      ]),
    );
  }
}
