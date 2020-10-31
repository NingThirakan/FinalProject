import 'package:flutter/material.dart';
import 'package:MiniProject/ui/home.dart';

class Menub extends StatefulWidget {
  @override
  _MenubState createState() => _MenubState();
}

class _MenubState extends State<Menub> {

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
            cookPic2(),
            cook6(),
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
            child: Text("ข้าวผัดสะโพกไก่ม้วน",
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
                  image: AssetImage('images/menu2.png'),
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
                  image: AssetImage('images/menu2_i.jpg'),
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
            child: Text("1. นำข้าวกล้องมาล้างให้สะอาดแล้วนำไปหุง",
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
            margin: const EdgeInsets.only(top: 730, left: 30),
            child: Text(
                "2. สุกแล้วลงมาผัดให้ร่วนจากนั้นใส่ไข่ลงไป",
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
            margin: const EdgeInsets.only(top: 750, left: 30),
            child: Text("ผัดจนเคลือบข้าว ปรุงรสด้วยเกลือและพริกไทย",
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
              margin: const EdgeInsets.only(top: 790),
              child: Image(
                  image: AssetImage('images/menu2_1.jpg'),
                  height: 150,
                  width: 150)),
        ],
      );

  Widget cook4() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 970, left: 30),
            child: Text("3. นำผักโขม กระเทียมและหอมหัวใหญ่ลงไปผัดจนเริ่มสุก",
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
            child: Text("ปรุงรสด้วยเกลือและพริกไทย",
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
              margin: const EdgeInsets.only(top: 1030),
              child: Image(
                  image: AssetImage('images/menu2_2.jpg'),
                  height: 150,
                  width: 150)),
        ],
      );

  Widget cook6() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 1200, left: 30, bottom: 30),
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
      margin: const EdgeInsets.only(top: 35, left: 5),
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
