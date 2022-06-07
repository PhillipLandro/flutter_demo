import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
         padding: const EdgeInsets.all(15),
         child: Center(
           child: Container(
            decoration: BoxDecoration(border: Border.all(width: 3)),
            width: 250,
            height: 250,
            alignment: Alignment.center,
            child: const Text(
                "Hallo Welt",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
          ),
         )
          
        ),
    );
  }
}
