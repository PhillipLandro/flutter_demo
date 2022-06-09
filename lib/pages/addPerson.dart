import 'package:flutter/material.dart';
import 'package:flutter_demo/objects/person.dart';

class AddPersonPage extends StatelessWidget {
  late String name;
  late int alter;

  final AppBar _appBar = AppBar(
    centerTitle: true,
    title: const Text("Person hinzufügen"),
    backgroundColor: Colors.blue,
    leading: null,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _appBar,
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            height: 220,
            width: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.blueAccent)),
            child: Column(
              children: [
                TextField(
                  onChanged: (value) {
                    name = value;
                  },
                  decoration: const InputDecoration(
                      hintText: "Name", prefixIcon: Icon(Icons.person)),
                ),
                TextField(
                  onChanged: (value) {},
                  keyboardType: TextInputType.number,
                  maxLength: 3,
                  decoration: const InputDecoration(
                      hintText: "Alter", prefixIcon: Icon(Icons.numbers)),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (name.isNotEmpty) {
                          Person p = Person(name, 11);
                          Navigator.pop(context, p);
                        }
                      },
                      child: const Text("Add Person"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
