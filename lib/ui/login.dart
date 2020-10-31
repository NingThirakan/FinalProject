import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:MiniProject/nuility/normal_Dialog.dart';
import 'package:MiniProject/ui/home.dart';
import 'package:MiniProject/ui/signUp.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String username, password;
  final database = FirebaseDatabase.instance.reference();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2c2b3f),
      body: SafeArea(
        child: Center(
            child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              showLogo(),
              mySizebox(),
              showAppname(),
              mySizebox(),
              usernameForm(),
              mySizebox(),
              passForm(),
              mySizebox(),
              loginButton(),
              mySizebox(),
              showText(),
            ],
          ),
        )),
      ),
    );
  }

  Future<Null> logIn() async {
    var data = database.child("user");
    await data.child(username).once().then((DataSnapshot snapshot) {
      if (username == '${snapshot.value['Username']}' &&
          password == '${snapshot.value['Password']}') {
        MaterialPageRoute route = MaterialPageRoute(
          builder: (context) => Homepage(),
        );
        Navigator.pushAndRemoveUntil(context, route, (route) => false);
      } else if (username != '${snapshot.value['Username']}' ||
          password != '${snapshot.value['Password']}') {
        normalDialog(context, 'Invalid username or password.');
      }
    });
  }

  mySizebox() => SizedBox(
        width: 8.0,
        height: 20.0,
      );

  ClipOval showLogo() {
    return ClipOval(
        child: Image(
      image: AssetImage('images/logo.png'),
      height: 170,
      width: 170,
      fit: BoxFit.cover,
    ));
  }

  Widget showAppname() {
    return Text(
      'Blue App',
      style: TextStyle(
          fontFamily: 'Balistika', fontSize: 40.0, color: Color(0xFF48d6d2)),
    );
  }

  Widget usernameForm() => Container(
        width: 300.0,
        child: TextField(
          onChanged: (value) => username = value.trim(),
          decoration: InputDecoration(
            fillColor: Color(0xFFFFFFFF),
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(27))),
            labelText: "Username",
          ),
        ),
      );

  Widget passForm() => Container(
        width: 300.0,
        child: TextField(
          onChanged: (value) => password = value.trim(),
          obscureText: true,
          decoration: InputDecoration(
            fillColor: Color(0xFFFFFFFF),
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(27))),
            labelText: "Password",
          ),
        ),
      );

  Container loginButton() => Container(
      width: 200.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(27),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          color: Color(0xFF48d6d2),
          onPressed: () {
            if (username == null ||
                username.isEmpty ||
                password == null ||
                password.isEmpty) {
              normalDialog(
                  context, 'Please complete the following information.');
            } else {
              logIn();
            }
          },
          child: Text(
            'LOGIN',
            style: TextStyle(
                fontFamily: 'PrintAble4U', color: Colors.black, fontSize: 20.0),
          ),
        ),
      ));

  Widget showText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Don,t have an Account?",
            style: TextStyle(color: Color(0xFFFFFFFF))),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            MaterialPageRoute route =
                MaterialPageRoute(builder: (value) => SignUp());
            Navigator.push(context, route);
          },
          child: Text(
            ' Sign up',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xFF48d6d2)),
          ),
        ),
      ],
    );
  }
}
