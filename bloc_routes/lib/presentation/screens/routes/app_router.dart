import 'package:bloc_fuctions/presentation/screens/home_Screen.dart';
import 'package:bloc_fuctions/presentation/screens/second_screen.dart';
import 'package:bloc_fuctions/presentation/screens/third_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  
  Route onGeneratedRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
        break;
      case '/sceond':
        return MaterialPageRoute(builder: (_) => SecondScreen());
        break;
      case '/third':
        return MaterialPageRoute(builder: (_) => ThirdScreen());
        break;
      default:
        return null;
    }
  }
}
