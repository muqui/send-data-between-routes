
import 'package:flutter/material.dart';
import 'package:pasar_datos_entre_widgets/pages/detail_screen.dart';
import 'package:pasar_datos_entre_widgets/pages/home.dart';

class RouteGenerator{
  
  static Route<dynamic>? generateRoute(RouteSettings settings){
    final args = settings.arguments;

    switch(settings.name){
      case'/':
        return MaterialPageRoute(builder : ( _ )=> HomeScreen());
      case '/second' :   
        if(args is String){

          return MaterialPageRoute(builder : ( _ )=> DetailScreen(data: args));

        }
        return _errorRoute();
      default: _errorRoute();
    }

  }

   static Route<dynamic>? _errorRoute()  {
    return MaterialPageRoute(builder : (_){
      return Scaffold(
             appBar: AppBar(title: Text('error')),
             body: Center(
              child: Text('ERROR'),
             ),
      );

    });
}
}

