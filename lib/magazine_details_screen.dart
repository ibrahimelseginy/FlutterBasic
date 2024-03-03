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
        // Buttons
        /* 
                  first button
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute();
                      // Navigator.of(context).pushReplacement();
                      // Navigator.of(context).pushReplacementNamed('Magazine_details');
                      // Navigator.of(context).pushNamed(MagazineDetailsScreen.routeName);
                    },
                    child: const Text('navigate'),
                    // style: ElevatedButton.styleFrom(),
                    // style: ButtonStyle(),
                  )
                  */
        /*
                  // second button
                  TextButton( 
                    onPressed: () {},
                    child: Text('login'),
                    // style: ButtonStyle(),)
                  )
                  
                  // third button
                  OutlinedButton(
                    onPressed: () {},
                    child: Text('login'),
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
      ]),
    );
  }
}
