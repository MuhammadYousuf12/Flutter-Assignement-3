import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeelani_store/history.dart';
import 'package:jeelani_store/profile.dart';

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
          backgroundColor: Color(0xffE6E6E6),
          foregroundColor: Color(0xffFF0000),
          centerTitle: true,
          title: Text("Home"),
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
            color: Color(0xffE6E6E6),
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
                  color: Color(0xffE6E6E6),
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
                  color: Color(0xffE6E6E6),
                  child: InkWell(
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => History()),
                        );
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
                  color: Color(0xffE6E6E6),
                  child: InkWell(
                    child: ListTile(
                      onTap: () {
                        Navigator.pop(context);
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
                  child: Container(
                    width: 395,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: ListTile(
                            leading: Image.asset(
                              'assets/products/purifier.jpg',
                            ),
                            title: Text(
                              'Water Purifier',
                              style: TextStyle(fontWeight: FontWeight.bold),
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
                                Row(
                                  children: [
                                    Text('20 Pieces'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Quantity: 1'),
                                  ],
                                )
                              ],
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                'Rs.600',
                                textScaleFactor: 1.4,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffFF0000)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                  child: Container(
                    width: 395,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: ListTile(
                            leading: Image.asset('assets/products/set.jpg'),
                            title: Text(
                              'Zircon Combo Set',
                              style: TextStyle(fontWeight: FontWeight.bold),
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
                                Row(
                                  children: [
                                    Text('20 Pieces'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Quantity: 1'),
                                  ],
                                )
                              ],
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(top: 13.0),
                              child: Text(
                                'Rs.1,150',
                                textScaleFactor: 1.4,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffFF0000)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                  child: Container(
                    width: 395,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Image.asset('assets/products/bucket.jpg'),
                          title: Text(
                            'Big Rice Bucket',
                            style: TextStyle(fontWeight: FontWeight.bold),
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
                              Row(
                                children: [
                                  Text('20 Pieces'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Quantity: 1'),
                                ],
                              )
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Text(
                              'Rs.3,000',
                              textScaleFactor: 1.4,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFF0000)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                  child: Container(
                    width: 395,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Image.asset('assets/products/suit.jpg'),
                          title: Text(
                            'Ladies Wedding Collection',
                            style: TextStyle(fontWeight: FontWeight.bold),
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
                              Row(
                                children: [
                                  Text('20 Pieces'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Quantity: 1'),
                                ],
                              )
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              'Rs.3,200',
                              textScaleFactor: 1.4,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFF0000)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                  child: Container(
                    width: 395,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Image.asset('assets/products/lamp.jpg'),
                          title: Text(
                            'Balance Lamp',
                            style: TextStyle(fontWeight: FontWeight.bold),
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
                              Row(
                                children: [
                                  Text('20 Pieces'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Quantity: 1'),
                                ],
                              )
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Text(
                              'Rs.3,800',
                              textScaleFactor: 1.4,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFF0000)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                  child: Container(
                    width: 395,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Image.asset(
                            'assets/products/bowl set.jpg',
                            width: 60,
                          ),
                          title: Text(
                            '4 Pieces Bowl Set',
                            style: TextStyle(fontWeight: FontWeight.bold),
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
                              Row(
                                children: [
                                  Text('20 Pieces'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Quantity: 1'),
                                ],
                              )
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              'Rs.1,800',
                              textScaleFactor: 1.4,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFF0000)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                  child: Container(
                    width: 395,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Image.asset(
                            'assets/products/cookware.jpg',
                            width: 55,
                          ),
                          title: Text(
                            '9 Pieces Cookware',
                            style: TextStyle(fontWeight: FontWeight.bold),
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
                              Row(
                                children: [
                                  Text('20 Pieces'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Quantity: 1'),
                                ],
                              )
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              'Rs.24,000',
                              textScaleFactor: 1.4,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFF0000)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 395,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: ListTile(
                            leading: Image.asset(
                              'assets/products/purifier.jpg',
                            ),
                            title: Text(
                              'Water Purifier',
                              style: TextStyle(fontWeight: FontWeight.bold),
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
                                Row(
                                  children: [
                                    Text('20 Pieces'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Quantity: 1'),
                                  ],
                                )
                              ],
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                'Rs.600',
                                textScaleFactor: 1.4,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffFF0000)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                  child: Container(
                    width: 395,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: ListTile(
                            leading: Image.asset('assets/products/set.jpg'),
                            title: Text(
                              'Zircon Combo Set',
                              style: TextStyle(fontWeight: FontWeight.bold),
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
                                Row(
                                  children: [
                                    Text('20 Pieces'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Quantity: 1'),
                                  ],
                                )
                              ],
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(top: 13.0),
                              child: Text(
                                'Rs.1,150',
                                textScaleFactor: 1.4,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffFF0000)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                  child: Container(
                    width: 395,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Image.asset('assets/products/bucket.jpg'),
                          title: Text(
                            'Big Rice Bucket',
                            style: TextStyle(fontWeight: FontWeight.bold),
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
                              Row(
                                children: [
                                  Text('20 Pieces'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Quantity: 1'),
                                ],
                              )
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Text(
                              'Rs.3,000',
                              textScaleFactor: 1.4,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFF0000)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                  child: Container(
                    width: 395,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Image.asset('assets/products/suit.jpg'),
                          title: Text(
                            'Ladies Wedding Collection',
                            style: TextStyle(fontWeight: FontWeight.bold),
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
                              Row(
                                children: [
                                  Text('20 Pieces'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Quantity: 1'),
                                ],
                              )
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              'Rs.3,200',
                              textScaleFactor: 1.4,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFF0000)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                  child: Container(
                    width: 395,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Image.asset('assets/products/lamp.jpg'),
                          title: Text(
                            'Balance Lamp',
                            style: TextStyle(fontWeight: FontWeight.bold),
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
                              Row(
                                children: [
                                  Text('20 Pieces'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Quantity: 1'),
                                ],
                              )
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Text(
                              'Rs.3,800',
                              textScaleFactor: 1.4,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFF0000)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                  child: Container(
                    width: 395,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Image.asset(
                            'assets/products/bowl set.jpg',
                            width: 60,
                          ),
                          title: Text(
                            '4 Pieces Bowl Set',
                            style: TextStyle(fontWeight: FontWeight.bold),
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
                              Row(
                                children: [
                                  Text('20 Pieces'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Quantity: 1'),
                                ],
                              )
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              'Rs.1,800',
                              textScaleFactor: 1.4,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFF0000)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                  child: Container(
                    width: 395,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Image.asset(
                            'assets/products/cookware.jpg',
                            width: 55,
                          ),
                          title: Text(
                            '9 Pieces Cookware',
                            style: TextStyle(fontWeight: FontWeight.bold),
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
                              Row(
                                children: [
                                  Text('20 Pieces'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Quantity: 1'),
                                ],
                              )
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              'Rs.24,000',
                              textScaleFactor: 1.4,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFF0000)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 395,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: ListTile(
                            leading: Image.asset(
                              'assets/products/purifier.jpg',
                            ),
                            title: Text(
                              'Water Purifier',
                              style: TextStyle(fontWeight: FontWeight.bold),
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
                                Row(
                                  children: [
                                    Text('20 Pieces'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Quantity: 1'),
                                  ],
                                )
                              ],
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                'Rs.600',
                                textScaleFactor: 1.4,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffFF0000)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                  child: Container(
                    width: 395,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: ListTile(
                            leading: Image.asset('assets/products/set.jpg'),
                            title: Text(
                              'Zircon Combo Set',
                              style: TextStyle(fontWeight: FontWeight.bold),
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
                                Row(
                                  children: [
                                    Text('20 Pieces'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Quantity: 1'),
                                  ],
                                )
                              ],
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(top: 13.0),
                              child: Text(
                                'Rs.1,150',
                                textScaleFactor: 1.4,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffFF0000)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                  child: Container(
                    width: 395,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Image.asset('assets/products/bucket.jpg'),
                          title: Text(
                            'Big Rice Bucket',
                            style: TextStyle(fontWeight: FontWeight.bold),
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
                              Row(
                                children: [
                                  Text('20 Pieces'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Quantity: 1'),
                                ],
                              )
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Text(
                              'Rs.3,000',
                              textScaleFactor: 1.4,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFF0000)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                  child: Container(
                    width: 395,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Image.asset('assets/products/suit.jpg'),
                          title: Text(
                            'Ladies Wedding Collection',
                            style: TextStyle(fontWeight: FontWeight.bold),
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
                              Row(
                                children: [
                                  Text('20 Pieces'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Quantity: 1'),
                                ],
                              )
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              'Rs.3,200',
                              textScaleFactor: 1.4,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFF0000)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                  child: Container(
                    width: 395,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Image.asset('assets/products/lamp.jpg'),
                          title: Text(
                            'Balance Lamp',
                            style: TextStyle(fontWeight: FontWeight.bold),
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
                              Row(
                                children: [
                                  Text('20 Pieces'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Quantity: 1'),
                                ],
                              )
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Text(
                              'Rs.3,800',
                              textScaleFactor: 1.4,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFF0000)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                  child: Container(
                    width: 395,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Image.asset(
                            'assets/products/bowl set.jpg',
                            width: 60,
                          ),
                          title: Text(
                            '4 Pieces Bowl Set',
                            style: TextStyle(fontWeight: FontWeight.bold),
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
                              Row(
                                children: [
                                  Text('20 Pieces'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Quantity: 1'),
                                ],
                              )
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              'Rs.1,800',
                              textScaleFactor: 1.4,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFF0000)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                  child: Container(
                    width: 395,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Image.asset(
                            'assets/products/cookware.jpg',
                            width: 55,
                          ),
                          title: Text(
                            '9 Pieces Cookware',
                            style: TextStyle(fontWeight: FontWeight.bold),
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
                              Row(
                                children: [
                                  Text('20 Pieces'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Quantity: 1'),
                                ],
                              )
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              'Rs.24,000',
                              textScaleFactor: 1.4,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFF0000)),
                            ),
                          ),
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
    );
  }
}
