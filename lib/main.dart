import 'package:flutter/material.dart';
import 'package:jeelani_store/history.dart';
import 'package:jeelani_store/home.dart';
import 'package:jeelani_store/profile.dart';
import 'login_page.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jeelani Store',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/history': (context) => History(),
        '/profile': (context) => UserProfile(),
      },
    );
  }
}
