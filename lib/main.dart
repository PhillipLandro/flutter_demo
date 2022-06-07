import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/start.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget{
  const App();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        child: StartPage()
      ),
    );
  }
}