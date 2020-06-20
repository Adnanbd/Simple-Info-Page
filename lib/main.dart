import 'package:antopolis_first/screens/info_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
       
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/' : (_) => InfoScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
