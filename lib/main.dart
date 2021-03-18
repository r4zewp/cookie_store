import 'package:flutter/material.dart';
import 'package:cookies_store/screens/details.dart';
import 'package:cookies_store/screens/home.dart';
import 'package:flutter/services.dart';

void main(){
  runApp(Main());
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/details': (BuildContext context){
          return Home();
        },
        '/': (BuildContext context){
          return Details();
        }
      },
    );
  }
}

