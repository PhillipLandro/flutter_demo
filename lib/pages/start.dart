import 'package:flutter/material.dart';
import 'package:flutter_demo/objects/person.dart';

class StartPage extends StatefulWidget {
  StartPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _StartPage();
  }
}

class _StartPage extends State<StartPage> {
  List<Person> personen = [
    Person("Aaron", 24),
    Person("Niklas", 20),
    Person("Jonas", 20),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personen App"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 80),
        child: ListView.builder(
          itemCount: personen.length,
          itemBuilder: (BuildContext contex, int index) {
            return ListTile(
              leading: const Icon(
                Icons.person,
                size: 40,
              ),
              trailing: InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(mySnackbar(personen[index].getName()));
                  setState(() {
                    personen.removeAt(index);
                  });
                },
                child: const Icon(
                  Icons.delete,
                  size: 40,
                  color: Colors.red,
                ),
              ),
              title: Text(personen[index].getName()),
              subtitle: Text("${personen[index].getAlter()} Jahre alt"),
            );
          },
        ),
      ),
      floatingActionButton: RawMaterialButton(
        onPressed: () {
          setState(() {
            personen.add(Person("Ingo", 48));
          });
        },
        elevation: 2.0,
        fillColor: Colors.white,
        padding: const EdgeInsets.all(15.0),
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          size: 35.0,
        ),
      ),
    );
  }

  SnackBar mySnackbar(String name) {
    return SnackBar(
      backgroundColor: Colors.green,
      content: Text("$name wurde gelöscht!"),
      elevation: 6,
      behavior: SnackBarBehavior.floating,
    );
  }

  myDialog(context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Mein Dialog"),
            content: const Text("Hallo Welt"),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("OK")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancel")),
            ],
          );
        });
  }
}
