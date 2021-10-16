import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jeelani_store/history.dart';
import 'package:jeelani_store/profile.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _notificationsOn = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jeelani Store',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
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
                        return null;
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
                  color: Color(0xffFAFAFA),
                  child: InkWell(
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
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
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: ListTile(
                            leading: Container(
                              height: 70,
                              width: 70,
                              child: Image.asset(
                                'assets/products/purifier.jpg',
                                fit: BoxFit.fill,
                              ),
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
                                textScaleFactor:
                                    MediaQuery.textScaleFactorOf(context),
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
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: ListTile(
                            leading: Container(
                                height: 70,
                                width: 70,
                                child: Image.asset(
                                  'assets/products/set.jpg',
                                  fit: BoxFit.fill,
                                )),
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
                                textScaleFactor:
                                    MediaQuery.textScaleFactorOf(context),
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
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Container(
                              height: 70,
                              width: 70,
                              child: Image.asset(
                                'assets/products/bucket.jpg',
                                fit: BoxFit.fill,
                              )),
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
                              textScaleFactor:
                                  MediaQuery.textScaleFactorOf(context),
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
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Container(
                              height: 70,
                              width: 70,
                              child: Image.asset('assets/products/suit.jpg',
                                  fit: BoxFit.fill)),
                          title: Text(
                            'Ladies Wedding Collection',
                            overflow: TextOverflow.ellipsis,
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
                              textScaleFactor:
                                  MediaQuery.textScaleFactorOf(context),
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
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Container(
                              height: 70,
                              width: 70,
                              child: Image.asset(
                                'assets/products/lamp.jpg',
                                fit: BoxFit.fill,
                              )),
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
                              textScaleFactor:
                                  MediaQuery.textScaleFactorOf(context),
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
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Container(
                            height: 70,
                            width: 70,
                            child: Image.asset(
                              'assets/products/bowl set.jpg',
                              fit: BoxFit.fill,
                            ),
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
                              textScaleFactor:
                                  MediaQuery.textScaleFactorOf(context),
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
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Container(
                            height: 70,
                            width: 70,
                            child: Image.asset(
                              'assets/products/cookware.jpg',
                              fit: BoxFit.fill,
                              // width: 55,
                            ),
                          ),
                          title: Text(
                            '9 Pieces Cookware',
                            overflow: TextOverflow.ellipsis,
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
                              textScaleFactor:
                                  MediaQuery.textScaleFactorOf(context),
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
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: ListTile(
                            leading: Container(
                              height: 70,
                              width: 70,
                              child: Image.asset(
                                'assets/products/purifier.jpg',
                                fit: BoxFit.fill,
                              ),
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
                                textScaleFactor:
                                    MediaQuery.textScaleFactorOf(context),
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
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: ListTile(
                            leading: Container(
                                height: 70,
                                width: 70,
                                child: Image.asset(
                                  'assets/products/set.jpg',
                                  fit: BoxFit.fill,
                                )),
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
                                textScaleFactor:
                                    MediaQuery.textScaleFactorOf(context),
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
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Container(
                              height: 70,
                              width: 70,
                              child: Image.asset(
                                'assets/products/bucket.jpg',
                                fit: BoxFit.fill,
                              )),
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
                              textScaleFactor:
                                  MediaQuery.textScaleFactorOf(context),
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
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Container(
                              height: 70,
                              width: 70,
                              child: Image.asset('assets/products/suit.jpg',
                                  fit: BoxFit.fill)),
                          title: Text(
                            'Ladies Wedding Collection',
                            overflow: TextOverflow.ellipsis,
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
                              textScaleFactor:
                                  MediaQuery.textScaleFactorOf(context),
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
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Container(
                              height: 70,
                              width: 70,
                              child: Image.asset(
                                'assets/products/lamp.jpg',
                                fit: BoxFit.fill,
                              )),
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
                              textScaleFactor:
                                  MediaQuery.textScaleFactorOf(context),
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
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Container(
                            height: 70,
                            width: 70,
                            child: Image.asset(
                              'assets/products/bowl set.jpg',
                              fit: BoxFit.fill,
                            ),
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
                              textScaleFactor:
                                  MediaQuery.textScaleFactorOf(context),
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
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Container(
                            height: 70,
                            width: 70,
                            child: Image.asset(
                              'assets/products/cookware.jpg',
                              fit: BoxFit.fill,
                              // width: 55,
                            ),
                          ),
                          title: Text(
                            '9 Pieces Cookware',
                            overflow: TextOverflow.ellipsis,
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
                              textScaleFactor:
                                  MediaQuery.textScaleFactorOf(context),
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
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: ListTile(
                            leading: Container(
                              height: 70,
                              width: 70,
                              child: Image.asset(
                                'assets/products/purifier.jpg',
                                fit: BoxFit.fill,
                              ),
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
                                textScaleFactor:
                                    MediaQuery.textScaleFactorOf(context),
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
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: ListTile(
                            leading: Container(
                                height: 70,
                                width: 70,
                                child: Image.asset(
                                  'assets/products/set.jpg',
                                  fit: BoxFit.fill,
                                )),
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
                                textScaleFactor:
                                    MediaQuery.textScaleFactorOf(context),
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
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Container(
                              height: 70,
                              width: 70,
                              child: Image.asset(
                                'assets/products/bucket.jpg',
                                fit: BoxFit.fill,
                              )),
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
                              textScaleFactor:
                                  MediaQuery.textScaleFactorOf(context),
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
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Container(
                              height: 70,
                              width: 70,
                              child: Image.asset('assets/products/suit.jpg',
                                  fit: BoxFit.fill)),
                          title: Text(
                            'Ladies Wedding Collection',
                            overflow: TextOverflow.ellipsis,
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
                              textScaleFactor:
                                  MediaQuery.textScaleFactorOf(context),
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
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Container(
                              height: 70,
                              width: 70,
                              child: Image.asset(
                                'assets/products/lamp.jpg',
                                fit: BoxFit.fill,
                              )),
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
                              textScaleFactor:
                                  MediaQuery.textScaleFactorOf(context),
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
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Container(
                            height: 70,
                            width: 70,
                            child: Image.asset(
                              'assets/products/bowl set.jpg',
                              fit: BoxFit.fill,
                            ),
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
                              textScaleFactor:
                                  MediaQuery.textScaleFactorOf(context),
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
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Card(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Container(
                            height: 70,
                            width: 70,
                            child: Image.asset(
                              'assets/products/cookware.jpg',
                              fit: BoxFit.fill,
                              // width: 55,
                            ),
                          ),
                          title: Text(
                            '9 Pieces Cookware',
                            overflow: TextOverflow.ellipsis,
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
                              textScaleFactor:
                                  MediaQuery.textScaleFactorOf(context),
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
