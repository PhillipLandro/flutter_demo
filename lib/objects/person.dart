import 'dart:convert';

class Person {

  String _name = "dummy";
  int _alter = 69;

  Person(String pName, int pAlter){
    _name = pName;
    _alter = pAlter;
  }

  String getName(){
    return _name;
  }

  int getAlter(){
    return _alter;
  }

  String toJson(){
    Map<String, dynamic> map = {};
    map['name'] = _name;
    map['alter'] = _alter;

    return jsonEncode(map);
  }

  static Person fromJson(String json){
    Map<String, dynamic> map = jsonDecode(json)[0];
    return Person("${map['firstname']} ${map['lastname']}", map['age']);
  }

}