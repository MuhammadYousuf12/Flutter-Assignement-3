import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeelani_store/home.dart';

import 'history.dart';
import 'login_page.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  bool _notificationsOn = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jeelani Store',
      home: Scaffold(
        appBar: AppBar(
          backwardsCompatibility: false,
          backgroundColor: Color(0xffE6E6E6),
          foregroundColor: Color(0xffFF0000),
          centerTitle: true,
          title: Text("Profile"),
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
                        return null;
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
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Container(
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Muhammad Yousuf',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color(0xffFF0000),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'muhammad.yousuf01@gmail.com',
                              // textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xffFF0000),
                                fontSize: 15,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()),
                                  );
                                },
                                child: Text(
                                  'Logout',
                                  textScaleFactor: 1.2,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 480,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          'ACCOUNT INFORMATION',
                          style: TextStyle(
                              color: Color(0xffFF0000),
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.left,
                          textScaleFactor: 1.5,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'Full Name',
                          style: TextStyle(
                              color: Color(0xffFF0000),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        subtitle: Text('Muhammad Yousuf',
                            style: TextStyle(fontSize: 18)),
                        trailing: Icon(
                          Icons.edit,
                          size: 30,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'Email',
                          style: TextStyle(
                              color: Color(0xffFF0000),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        subtitle: Text('muhammad.yousuf01@gmail.com',
                            style: TextStyle(fontSize: 18)),
                      ),
                      ListTile(
                        title: Text(
                          'Phone',
                          style: TextStyle(
                              color: Color(0xffFF0000),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        subtitle: Text('+92012-3456789',
                            style: TextStyle(fontSize: 18)),
                      ),
                      ListTile(
                        title: Text(
                          'Address',
                          style: TextStyle(
                              color: Color(0xffFF0000),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        subtitle: Text('House#01, Street-01, Karachi, Pakistan',
                            style: TextStyle(fontSize: 18)),
                      ),
                      ListTile(
                        title: Text(
                          'Gender',
                          style: TextStyle(
                              color: Color(0xffFF0000),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        subtitle: Text('Male', style: TextStyle(fontSize: 18)),
                      ),
                      ListTile(
                        title: Text(
                          'Date of Birth',
                          style: TextStyle(
                              color: Color(0xffFF0000),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        subtitle: Text('October 21, 1996',
                            style: TextStyle(fontSize: 18)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
