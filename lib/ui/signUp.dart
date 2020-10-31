import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:MiniProject/nuility/normal_Dialog.dart';
import 'package:MiniProject/ui/login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String name, username, password, conpass;
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
              Text('Create Account',
                  style: TextStyle(
                      fontFamily: 'Caviar Dreams',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 45)),
              SizedBox(height: 40),
              nameForm(),
              mySizebox(),
              usernameForm(),
              mySizebox(),
              passwordForm(),
              mySizebox(),
              confirmForm(),
              mySizebox(),
              signupButton(),
              mySizebox(),
              showText(),
            ],
          ),
        )),
      ),
    );
  }

  Future<Null> signIn() async {
    var data = database.child("user");
    data.child(username).set({
      'Name': name,
      'Username': username,
      'Password': password,
    });
    MaterialPageRoute route = MaterialPageRoute(
      builder: (context) => Login(),
    );
    Navigator.pushAndRemoveUntil(context, route, (route) => false);
  }

  mySizebox() => SizedBox(
        width: 8.0,
        height: 20.0,
      );

  Widget nameForm() => Container(
        width: 300.0,
        child: TextField(
          onChanged: (value) => name = value.trim(),
          decoration: InputDecoration(
            fillColor: Color(0xFFFFFFFF),
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(27))),
            labelText: "Name",
          ),
        ),
      );

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

  Widget passwordForm() => Container(
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

  Widget confirmForm() => Container(
        width: 300.0,
        child: TextField(
          onChanged: (value) => conpass = value.trim(),
          obscureText: true,
          decoration: InputDecoration(
            fillColor: Color(0xFFFFFFFF),
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(27))),
            labelText: "Confirm Password",
          ),
        ),
      );

  Container signupButton() => Container(
      width: 200.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(27),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          color: Color(0xFF48d6d2),
          onPressed: () {
            if (name == null ||
                name.isEmpty ||
                username == null ||
                username.isEmpty ||
                password == null ||
                password.isEmpty ||
                conpass == null ||
                conpass.isEmpty) {
              normalDialog(
                  context, 'Please complete the following information.');
            } else if (password != conpass ||
                conpass != password && password.length >= 6) {
              normalDialog(context, 'Password is incorrect.');
            } else {
              var data = database.child("user");
              data.child(username).once().then((DataSnapshot snapshot) {
                if ('${snapshot.value}' == 'null') {
                  signIn();
                } else {
                  normalDialog(context, 'Cannot use this username.');
                }
              });
            }
          },
          child: Text(
            'SIGN UP',
            style: TextStyle(
                fontFamily: 'PrintAble4U', color: Colors.black, fontSize: 20.0),
          ),
        ),
      ));

  Widget showText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Already have an Account?",
            style: TextStyle(color: Color(0xFFFFFFFF))),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            MaterialPageRoute route =
                MaterialPageRoute(builder: (value) => Login());
            Navigator.push(context, route);
          },
          child: Text(
            ' Sign in',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xFF48d6d2)),
          ),
        ),
      ],
    );
  }
}
