import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddPersonPage extends StatelessWidget {
  final AppBar _appBar = AppBar(
    elevation: 0,
    title: const Text(
      "Person hinzufügen",
      style: TextStyle(color: Colors.black),
    ),
    backgroundColor: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
    );
  }
}
