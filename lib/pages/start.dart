import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const Text(
                "Hallo Welt",
                style: TextStyle(fontSize: 25, color: Colors.orange),
              ),
            ],
          ),
        ),
    );
  }
}
