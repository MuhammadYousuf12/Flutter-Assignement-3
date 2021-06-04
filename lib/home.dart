import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _notificationsOn = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backwardsCompatibility: false,
          backgroundColor: Color(0xff000000),
          foregroundColor: Color(0xffFF0000),
          centerTitle: true,
          title: Text("Ecomm App UI"),
          actions: [
            IconButton(
                icon: Icon(_notificationsOn
                    ? Icons.notifications_on
                    : Icons.notifications),
                onPressed: () {
                  setState(() {
                    _notificationsOn = !_notificationsOn;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
