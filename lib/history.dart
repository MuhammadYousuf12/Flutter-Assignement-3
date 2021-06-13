import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeelani_store/home.dart';
import 'package:jeelani_store/login_page.dart';
import 'package:jeelani_store/profile.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  bool _notificationsOn = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jeelani Store',
      home: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          appBar: AppBar(
            backwardsCompatibility: false,
            backgroundColor: Color(0xffE6E6E6),
            foregroundColor: Color(0xffFF0000),
            centerTitle: true,
            title: Text("History"),
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
          drawer: Drawer(
            child: Container(
              color: Color(0xffFAFAFA),
              child: ListView(
                children: [
                  DrawerHeader(
                    padding: EdgeInsets.zero,
                    child: UserAccountsDrawerHeader(
                      margin: EdgeInsets.zero,
                      decoration: BoxDecoration(color: Color(0xffE6E6E6)),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: AssetImage('assets/profile.jpg'),
                      ),
                      accountName: Text(
                        'Muhammad Yousuf',
                        style: TextStyle(
                          color: Color(0xffFF0000),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      accountEmail: Text(
                        'muhammad.yousuf01@gmail.com',
                        style: TextStyle(
                          color: Color(0xffFF0000),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: Color(0xffFAFAFA),
                    child: InkWell(
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserProfile()),
                          );
                        },
                        leading: Icon(CupertinoIcons.profile_circled,
                            color: Color(0xffFF0000)),
                        title: Text(
                          'Profile',
                          textScaleFactor: 1.2,
                          style: TextStyle(
                              color: Color(0xffFF0000),
                              fontFamily: "'Open Sans'"),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: Color(0xffFAFAFA),
                    child: InkWell(
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        leading:
                            Icon(CupertinoIcons.home, color: Color(0xffFF0000)),
                        title: Text(
                          'Home',
                          textScaleFactor: 1.2,
                          style: TextStyle(
                              color: Color(0xffFF0000),
                              fontFamily: "'Open Sans'"),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: Color(0xffFAFAFA),
                    child: InkWell(
                      child: ListTile(
                        onTap: () {
                          return null;
                        },
                        leading: Icon(Icons.history, color: Color(0xffFF0000)),
                        title: Text(
                          'History',
                          textScaleFactor: 1.2,
                          style: TextStyle(
                              color: Color(0xffFF0000),
                              fontFamily: "'Open Sans'"),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: Color(0xffFAFAFA),
                    child: InkWell(
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        leading: Icon(Icons.logout, color: Color(0xffFF0000)),
                        title: Text(
                          'Logout',
                          textScaleFactor: 1.2,
                          style: TextStyle(
                              color: Color(0xffFF0000),
                              fontFamily: "'Open Sans'"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Search',
                        suffixIcon: Icon(CupertinoIcons.search),
                      ),
                      cursorWidth: 1,
                      cursorColor: Colors.black,
                      cursorHeight: 23,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                              'assets/products/purifier.jpg',
                            ),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              'Water Purifier',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          subtitle: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 21,
                                    color: Colors.yellow,
                                  ),
                                  Text('5.0 (60 Reviews)'),
                                ],
                              ),
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Rs.600',
                              textScaleFactor: 1.2,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFF0000)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: ListTile(
                          leading: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                'assets/products/set.jpg',
                              )),
                          title: Padding(
                            padding: const EdgeInsets.only(top: 14.0),
                            child: Text(
                              'Zircon Combo Set',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          subtitle: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 21,
                                    color: Colors.yellow,
                                  ),
                                  Text('5.0 (60 Reviews)'),
                                ],
                              )
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 13.0),
                            child: Text(
                              'Rs.1,150',
                              textScaleFactor: 1.2,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFF0000)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: ListTile(
                        leading: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                              'assets/products/bucket.jpg',
                            )),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 14.0),
                          child: Text(
                            'Big Rice Bucket',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 21,
                                  color: Colors.yellow,
                                ),
                                Text('5.0 (60 Reviews)'),
                              ],
                            )
                          ],
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Text(
                            'Rs.3,000',
                            textScaleFactor: 1.2,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffFF0000)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: ListTile(
                        leading: CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/products/suit.jpg')),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            'Ladies Wedding Collection',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 21,
                                  color: Colors.yellow,
                                ),
                                Text('5.0 (60 Reviews)'),
                              ],
                            )
                          ],
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Text(
                            'Rs.3,200',
                            textScaleFactor: 1.2,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffFF0000)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: ListTile(
                        leading: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                              'assets/products/lamp.jpg',
                            )),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 14.0),
                          child: Text(
                            'Balance Lamp',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 21,
                                  color: Colors.yellow,
                                ),
                                Text('5.0 (60 Reviews)'),
                              ],
                            )
                          ],
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Text(
                            'Rs.3,800',
                            textScaleFactor: 1.2,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffFF0000)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(
                            'assets/products/bowl set.jpg',
                          ),
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 14.0),
                          child: Text(
                            '4 Pieces Bowl Set',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 21,
                                  color: Colors.yellow,
                                ),
                                Text('5.0 (60 Reviews)'),
                              ],
                            )
                          ],
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Text(
                            'Rs.1,800',
                            textScaleFactor: 1.2,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffFF0000)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(
                            'assets/products/cookware.jpg',
                          ),
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 14.0),
                          child: Text(
                            '9 Pieces Cookware',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 21,
                                  color: Colors.yellow,
                                ),
                                Text('5.0 (60 Reviews)'),
                              ],
                            )
                          ],
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Text(
                            'Rs.24,000',
                            textScaleFactor: 1.2,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffFF0000)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                              'assets/products/purifier.jpg',
                            ),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              'Water Purifier',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          subtitle: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 21,
                                    color: Colors.yellow,
                                  ),
                                  Text('5.0 (60 Reviews)'),
                                ],
                              ),
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Rs.600',
                              textScaleFactor: 1.2,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFF0000)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: ListTile(
                          leading: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                'assets/products/set.jpg',
                              )),
                          title: Padding(
                            padding: const EdgeInsets.only(top: 14.0),
                            child: Text(
                              'Zircon Combo Set',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          subtitle: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 21,
                                    color: Colors.yellow,
                                  ),
                                  Text('5.0 (60 Reviews)'),
                                ],
                              )
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 13.0),
                            child: Text(
                              'Rs.1,150',
                              textScaleFactor: 1.2,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFF0000)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: ListTile(
                        leading: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                              'assets/products/bucket.jpg',
                            )),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 14.0),
                          child: Text(
                            'Big Rice Bucket',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 21,
                                  color: Colors.yellow,
                                ),
                                Text('5.0 (60 Reviews)'),
                              ],
                            )
                          ],
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Text(
                            'Rs.3,000',
                            textScaleFactor: 1.2,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffFF0000)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: ListTile(
                        leading: CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/products/suit.jpg')),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            'Ladies Wedding Collection',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 21,
                                  color: Colors.yellow,
                                ),
                                Text('5.0 (60 Reviews)'),
                              ],
                            )
                          ],
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Text(
                            'Rs.3,200',
                            textScaleFactor: 1.2,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffFF0000)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: ListTile(
                        leading: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                              'assets/products/lamp.jpg',
                            )),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 14.0),
                          child: Text(
                            'Balance Lamp',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 21,
                                  color: Colors.yellow,
                                ),
                                Text('5.0 (60 Reviews)'),
                              ],
                            )
                          ],
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Text(
                            'Rs.3,800',
                            textScaleFactor: 1.2,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffFF0000)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(
                            'assets/products/bowl set.jpg',
                          ),
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 14.0),
                          child: Text(
                            '4 Pieces Bowl Set',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 21,
                                  color: Colors.yellow,
                                ),
                                Text('5.0 (60 Reviews)'),
                              ],
                            )
                          ],
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Text(
                            'Rs.1,800',
                            textScaleFactor: 1.2,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffFF0000)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(
                            'assets/products/cookware.jpg',
                          ),
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 14.0),
                          child: Text(
                            '9 Pieces Cookware',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 21,
                                  color: Colors.yellow,
                                ),
                                Text('5.0 (60 Reviews)'),
                              ],
                            )
                          ],
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Text(
                            'Rs.24,000',
                            textScaleFactor: 1.2,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffFF0000)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
