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

}