import 'package:flutter/material.dart';
import 'package:MiniProject/ui/home.dart';

class Menud extends StatefulWidget {
  @override
  _MenudState createState() => _MenudState();
}

class _MenudState extends State<Menud> {
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
            cook7(),
            cookPic3(),
            cook8(),
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
            child: Text("หมูทอดน้ำจิ้มแจ่ว",
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
                  image: AssetImage('images/menu4.png'),
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
                  image: AssetImage('images/4_i.jpg'),
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
            child: Text("1. ผสมน้ำจิ้มแจ่วโดยใส่น้ำปลา น้ำมะขามเปียก",
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
            child: Text("น้ำตาลมะพร้าว น้ำมะนาว พริกป่น ข้าวคั่ว",
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
            child: Text("ผักชีฝรั่งซอยและต้นหอมซอย คนให้เข้ากัน",
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
                  image: AssetImage('images/4_2.jpg'),
                  height: 150,
                  width: 150)),
        ],
      );

  Widget cook4() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 950, left: 30),
            child: Text("2. หมักเนื้อหมูโดยซอสหอยนางรมและน้ำจิ้มแจ่วที่ผสมไว้",
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
            margin: const EdgeInsets.only(top: 970, left: 30),
            child: Text("คลุกเคล้าให้เข้ากันทิ้งไว้ 20 นาที",
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
              margin: const EdgeInsets.only(top: 1010),
              child: Image(
                  image: AssetImage('images/4_3.jpg'),
                  height: 150,
                  width: 150)),
        ],
      );

  Widget cook6() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 1190, left: 30),
            child: Text("3. นำเนื้อหมูวางเรียงในหม้อทอดไร้น้ำมัน",
                style: TextStyle(
                    fontFamily: 'Yellowtail',
                    fontSize: 16.0,
                    color: Color(0xFFedd2cb))),
          ),
        ],
      );

  Widget cook7() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 1210, left: 30),
            child: Text("ใช้ไฟอุณหภูมิ 180 องศาเซลเซียสอบ 10 นาทีหรือจนสุก",
                style: TextStyle(
                    fontFamily: 'Yellowtail',
                    fontSize: 16.0,
                    color: Color(0xFFedd2cb))),
          ),
        ],
      );

  Widget cookPic3() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              margin: const EdgeInsets.only(top: 1250),
              child: Image(
                  image: AssetImage('images/4_4.jpg'),
                  height: 150,
                  width: 150)),
        ],
      );

  Widget cook8() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 1430, left: 30, bottom: 30),
            child: Text("4. ตักหมูทอดจิ้มแจ่วใส่จานโรยด้วยผักชีฝรั่งซอย",
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
