import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/addPerson.dart';
import 'package:flutter_demo/pages/start.dart';

class MyRouter {
  static Route<dynamic> routes(RouteSettings rs) {
    switch (rs.name) {
      case '/start':
        return MaterialPageRoute(builder: (context) => StartPage());
      case '/add':
        return MaterialPageRoute(builder: (context) => AddPersonPage());
      default:
        return MaterialPageRoute(builder: (context) => StartPage());
    }
  }
}
