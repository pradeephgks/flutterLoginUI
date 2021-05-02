import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool issignedUp;

  @override
  void initState() {
    issignedUp = true;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.green[800],
          body: Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width / 6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RotatedBox(
                      quarterTurns: 1,
                      child: TextButton(
                        onPressed: () {
                          print("Login");
                          setState(() {
                            issignedUp = true;
                          });
                        },
                        child: Text("Log in",
                            style: TextStyle(
                                color: issignedUp ? Colors.white : Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    RotatedBox(
                      quarterTurns: 1,
                      child: TextButton(
                        onPressed: () {
                          print("Sign up");
                          setState(() {
                            issignedUp = false;
                          });
                        },
                        child: Text("Sign Up",
                            style: TextStyle(
                                color: issignedUp ? Colors.black : Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
              issignedUp ? LoginPage() : signup_page()
            ],
          ) // This trailing comma makes auto-formatting nicer for build methods.
          ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20))),
          child: Column(
            children: [
              Stack(
                fit: StackFit.loose,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {
                          print("CloseButton");
                        },
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.close_outlined),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Welcome\nBack",
                        style: TextStyle(
                            letterSpacing: 10,
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              Image.asset(
                "Images/deliverybike.png",
                cacheHeight: 220,
                cacheWidth: 220,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Log in ",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                      contentPadding: new EdgeInsets.symmetric(vertical: 10),
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.email),
                      labelText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: Colors.transparent))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                      contentPadding: new EdgeInsets.symmetric(vertical: 10),
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(FontAwesomeIcons.key),
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          borderSide: BorderSide(style: BorderStyle.solid))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "forget password",
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.solid,
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  child: Center(
                      child: Text(
                    "SIGN IN",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )),
                  height: 40,
                  width: MediaQuery.of(context).size.width - 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 2,
                        width: 30,
                        color: Colors.grey,
                      ),
                    ),
                    Text("OR"),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 2,
                        width: 30,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      iconSize: 30,
                      onPressed: null,
                      icon: Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.blue,
                      )),
                  IconButton(
                      iconSize: 30,
                      onPressed: null,
                      icon:
                          Icon(FontAwesomeIcons.facebook, color: Colors.blue)),
                  IconButton(
                      iconSize: 30,
                      onPressed: null,
                      icon: Icon(FontAwesomeIcons.googlePlusSquare,
                          color: Colors.redAccent)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class signup_page extends StatefulWidget {
  const signup_page({
    Key key,
  }) : super(key: key);

  @override
  _signup_pageState createState() => _signup_pageState();
}

class _signup_pageState extends State<signup_page> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                buildCloseButton(),
                Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset("Images/deliveryimage.png")),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.verified_user),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 5,
                          style: BorderStyle.solid,
                          color: Colors.blue)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.green, style: BorderStyle.solid)),
                  labelText: "UserName",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_rounded),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 5,
                          style: BorderStyle.solid,
                          color: Colors.blue)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.green, style: BorderStyle.solid)),
                  labelText: "Email",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_open),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 5,
                          style: BorderStyle.solid,
                          color: Colors.blue)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.green, style: BorderStyle.solid)),
                  labelText: "Password",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: TextFormField(
                enableInteractiveSelection: false,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phonelink_lock),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 5,
                          style: BorderStyle.solid,
                          color: Colors.blue)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.green, style: BorderStyle.solid)),
                  labelText: "Confirm Password",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Center(
                    child: Text(
                  "SIGN UP",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )),
                height: 40,
                width: MediaQuery.of(context).size.width - 200,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 2,
                      width: 30,
                      color: Colors.grey,
                    ),
                  ),
                  Text("OR"),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 2,
                      width: 30,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    iconSize: 30,
                    onPressed: null,
                    icon: Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.blue,
                    )),
                IconButton(
                    iconSize: 30,
                    onPressed: null,
                    icon: Icon(FontAwesomeIcons.facebook, color: Colors.blue)),
                IconButton(
                    iconSize: 30,
                    onPressed: null,
                    icon: Icon(FontAwesomeIcons.googlePlusSquare,
                        color: Colors.redAccent)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("if you haven't any account?"),
                TextButton(onPressed: () {}, child: Text("Sign In"))
              ],
            )
          ],
        ),
      ),
    ));
  }

  Align buildCloseButton() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            print("CloseButton");
          },
          child: CircleAvatar(
            radius: 16,
            backgroundColor: Colors.green,
            child: Icon(Icons.close_outlined),
          ),
        ),
      ),
    );
  }
}
