import 'package:app_015/pages/page1.dart';
import 'package:app_015/pages/page2.dart';
import 'package:app_015/pages/page3.dart';
import 'package:app_015/pages/page4.dart';
import 'package:app_015/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash_page(),
      routes: {
        Splash_page.id: (context) => Splash_page(),
        Page1.id: (context) => Page1(),
        Page2.id: (context) => Page2(),
        Page3.id: (context) => Page3(),
        Page4.id: (context) => Page4(),
      },
    );
  }
}
