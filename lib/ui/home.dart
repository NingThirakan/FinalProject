import 'package:flutter/material.dart';
import 'package:MiniProject/ui/login.dart';
import 'package:MiniProject/ui/menuA.dart';
import 'package:MiniProject/ui/menuB.dart';
import 'package:MiniProject/ui/menuD.dart';
import 'package:MiniProject/ui/menuC.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2c2b3f),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            backIcon(context),
            showMenu(),
            menuOne(),
            nameOne(),
            menuTwo(),
            nameTwo(),
            menuTree(),
            nameTree(),
            menuFour(),
            nameFour(),
          ],
        ),
      ),
    );
  }

  Widget menuOne() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 150),
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/menu1.png'))),
            child: FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {
                Navigator.pop(context);
                MaterialPageRoute route =
                    MaterialPageRoute(builder: (value) => Menua());
                Navigator.push(context, route);
              },
            ),
          ),
        ],
      );

  Widget nameOne() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 310),
            child: Text("ไก่ย่างซอสน้ำส้มสายชู",
                style: TextStyle(
                    fontFamily: 'Yellowtail',
                    fontSize: 20.0,
                    color: Color(0xFFfabfb7))),
          ),
        ],
      );

  Widget menuTwo() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 380),
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/menu2.png'))),
            child: FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {
                Navigator.pop(context);
                MaterialPageRoute route =
                    MaterialPageRoute(builder: (value) => Menub());
                Navigator.push(context, route);
              },
            ),
          ),
        ],
      );

  Widget nameTwo() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 540),
            child: Text("ข้าวผัดสะโพกไก่ม้วน",
                style: TextStyle(
                    fontFamily: 'Yellowtail',
                    fontSize: 20.0,
                    color: Color(0xFFfabfb7))),
          ),
        ],
      );

  Widget menuTree() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 610),
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/menu5.png'))),
            child: FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {
                Navigator.pop(context);
                MaterialPageRoute route =
                    MaterialPageRoute(builder: (value) => Menuc());
                Navigator.push(context, route);
              },
            ),
          ),
        ],
      );

  Widget nameTree() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 750),
            child: Text("ข้าวเนื้อย่างไข่แดงดอง",
                style: TextStyle(
                    fontFamily: 'Yellowtail',
                    fontSize: 20.0,
                    color: Color(0xFFfabfb7))),
          ),
        ],
      );

  Widget menuFour() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 840),
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/menu4.png'))),
            child: FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {
                Navigator.pop(context);
                MaterialPageRoute route =
                    MaterialPageRoute(builder: (value) => Menud());
                Navigator.push(context, route);
              },
            ),
          ),
        ],
      );

  Widget nameFour() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 1000, bottom: 30),
            child: Text("หมูทอดน้ำจิ้มแจ่ว",
                style: TextStyle(
                    fontFamily: 'Yellowtail',
                    fontSize: 20.0,
                    color: Color(0xFFfabfb7))),
          ),
        ],
      );

  Widget backIcon(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 35, left: 5),
      child: IconButton(
        icon: Icon(Icons.arrow_back_ios, color: Color(0xFFf2ded9)),
        onPressed: () {
          MaterialPageRoute route =
              MaterialPageRoute(builder: (value) => Login());
          Navigator.push(context, route);
        },
      ),
    );
  }

  Widget showMenu() {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Menu",
              style: TextStyle(
                  fontFamily: 'Photo Wall Sans Shadow',
                  fontSize: 70.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFf88c87))),
        ],
      ),
    );
  }
}
