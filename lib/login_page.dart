import 'package:flutter/material.dart';
import 'package:jeelani_store/home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool _passwordVisible = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) {
    if (_formKey.currentState.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      home: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          // resizeToAvoidBottomInset: false,
          body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              /*image: DecorationImage(
              image: AssetImage('assets/bg6.jpg'),
              fit: BoxFit.cover,
            )*/
            ),
            child: SingleChildScrollView(
              child: Center(
                child: Container(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 19.0),
                          child: Image.asset(
                            'assets/login.png',
                            width: 200,
                            height: 200,
                          ),
                        ),
                        Text(
                          "Welcome $name",
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily:
                                "'Google Sans','Noto Sans Myanmar UI',arial,sans-serif",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            maxLength: 25,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Username',
                            ),
                            style: TextStyle(fontSize: 16),
                            cursorWidth: 1,
                            cursorColor: Colors.black,
                            cursorHeight: 23,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Username can not be empty';
                              } else if (value.length > 25) {
                                return 'Sorry, your username must be between 6 and 30 characters long.';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              name = value;
                              setState(() {});
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Enter your password',
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                              ),
                            ),
                            obscureText: !_passwordVisible,
                            cursorWidth: 1,
                            cursorColor: Colors.black,
                            cursorHeight: 23,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Password can not be empty';
                              } else if (value.length < 8) {
                                return 'Password must have atleast 8 characters';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Forgot password?",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xff1a73e8),
                              fontFamily: 'Google Sans',
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              letterSpacing: 0.6,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 100,
                            height: 35,
                            child: ElevatedButton(
                              onPressed: () => moveToHome(context),
                              child: Text('Log In',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 100,
                            height: 35,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text('Sign Up',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
