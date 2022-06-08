import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/addPerson.dart';
import 'package:flutter_demo/pages/start.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget{
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: AddPersonPage() //StartPage(key: UniqueKey())
      ),
    );
  }
}