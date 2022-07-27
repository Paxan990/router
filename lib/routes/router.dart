import 'package:flutter/material.dart';
import '../home/home_page.dart';
import '../new/news_page.dart';


class RouteGenerator{
  static RouteGenerator _generator = RouteGenerator. _init();
  static RouteGenerator get router => _generator;

  RouteGenerator._init();
  Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return navigate(HomePage());
      case 'news':
        return navigate(NewsPage());
    }
  }
    navigate(Widget widget){
      return MaterialPageRoute(builder: (context)=> widget);

  }
}