import 'package:flutter/material.dart';
import 'package:MiniProject/ui/home.dart';

class Menua extends StatefulWidget {
  @override
  _MenuaState createState() => _MenuaState();
}

class _MenuaState extends State<Menua> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2c2b3f),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            backIcon(context),
            menuName(),
            menuPic(),
            materialName(),
            materialPic(),
            cookName(),
            cook1(),
            cook2(),
            cook3(),
            cookPic1(),
            cook4(),
            cook5(),
            cook6(),
            cookPic2(),
            cook7(),
          ],
        ),
      ),
    );
  }

  Widget menuName() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 90),
            child: Text("ไก่ย่างซอสน้ำส้มสายชู",
                style: TextStyle(
                    fontFamily: 'Yellowtail',
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Color(0xFFfacd60))),
          ),
        ],
      );

  Widget menuPic() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              margin: const EdgeInsets.only(top: 150),
              child: Image(
                  image: AssetImage('images/menu1.png'),
                  height: 170,
                  width: 170)),
        ],
      );

  Widget materialName() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 370, left: 20),
            child: Text("วัตถุดิบ",
                style: TextStyle(
                    fontFamily: 'Yellowtail',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Color(0xFFedd2cb))),
          ),
        ],
      );

  Widget materialPic() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              margin: const EdgeInsets.only(top: 390),
              child: Image(
                  image: AssetImage('images/menu1_i.png'),
                  height: 250,
                  width: 300)),
        ],
      );

  Widget cookName() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 650, left: 20),
            child: Text("วิธีทำ",
                style: TextStyle(
                    fontFamily: 'Yellowtail',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFedd2cb))),
          ),
        ],
      );

  Widget cook1() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 690, left: 30),
            child: Text("1. ผสมซอสโดยใส่น้ำส้มสายชูหมักจากแอปเปิ้ล",
                style: TextStyle(
                    fontFamily: 'Yellowtail',
                    fontSize: 16.0,
                    color: Color(0xFFedd2cb))),
          ),
        ],
      );

  Widget cook2() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 710, left: 30),
            child: Text("น้ำผึ้ง กระเทียมสับ ดิจองมัสตาร์ด เกลือ พริกไทยดำ",
                style: TextStyle(
                    fontFamily: 'Yellowtail',
                    fontSize: 16.0,
                    color: Color(0xFFedd2cb))),
          ),
        ],
      );

  Widget cook3() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 730, left: 30),
            child: Text("โรสแมรีและใบไทม์คนให้ทุกอย่างเข้ากันดี",
                style: TextStyle(
                    fontFamily: 'Yellowtail',
                    fontSize: 16.0,
                    color: Color(0xFFedd2cb))),
          ),
        ],
      );

  Widget cookPic1() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              margin: const EdgeInsets.only(top: 770),
              child: Image(
                  image: AssetImage('images/menu1_1.jpg'),
                  height: 150,
                  width: 150)),
        ],
      );

  Widget cook4() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 950, left: 30),
            child: Text("2. นำซอสที่ผสมแล้วมาหมักเนื้อไก่กับผักทิ้งไว้ 15 นาที",
                style: TextStyle(
                    fontFamily: 'Yellowtail',
                    fontSize: 16.0,
                    color: Color(0xFFedd2cb))),
          ),
        ],
      );

  Widget cook5() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 990, left: 30),
            child: Text("3. นำไก่ และผักไปย่างในเตาอบที่อุณหภูมิ 200",
                style: TextStyle(
                    fontFamily: 'Yellowtail',
                    fontSize: 16.0,
                    color: Color(0xFFedd2cb))),
          ),
        ],
      );

  Widget cook6() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 1010, left: 30),
            child: Text("องศาเซลเซียสประมาณ 30 นาที",
                style: TextStyle(
                    fontFamily: 'Yellowtail',
                    fontSize: 16.0,
                    color: Color(0xFFedd2cb))),
          ),
        ],
      );

  Widget cookPic2() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              margin: const EdgeInsets.only(top: 1050),
              child: Image(
                  image: AssetImage('images/menu1_2.jpg'),
                  height: 150,
                  width: 150)),
        ],
      );

  Widget cook7() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 1230, left: 30, bottom: 30),
            child: Text("4. ตักไก่และผักใส่จาน ตกแต่งให้สวยงาม",
                style: TextStyle(
                    fontFamily: 'Yellowtail',
                    fontSize: 16.0,
                    color: Color(0xFFedd2cb))),
          ),
        ],
      );

  Widget backIcon(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50, left: 5),
      child: IconButton(
        icon: Icon(Icons.arrow_back_ios, color: Color(0xFFf2ded9)),
        onPressed: () {
          MaterialPageRoute route =
              MaterialPageRoute(builder: (value) => Homepage());
          Navigator.push(context, route);
        },
      ),
    );
  }
}
