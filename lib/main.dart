import 'package:flutter/material.dart';
import 'package:kwinstagram/pages/loginPage.dart';
import 'package:kwinstagram/pages/registerPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Finstagram',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: 'login',
      routes: {
        'login': (context)=> loginPage(),
        'register':(context)=>registerPage(),
      },
    );
  }
}


