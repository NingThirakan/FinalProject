import 'package:flutter/material.dart';
import 'package:MiniProject/ui/home.dart';

class Menuc extends StatefulWidget {
  @override
  _MenucState createState() => _MenucState();
}

class _MenucState extends State<Menuc> {
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
            cook8(),
            cookPic3(),
            cook9(),
            cookPic4(),
            cook10(),
            cook11(),
            cookPic5(),
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
            child: Text("ข้าวเนื้อย่างไข่แดงดอง",
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
                  image: AssetImage('images/menu5.png'),
                  height: 170,
                  width: 190)),
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
                  image: AssetImage('images/5_i.jpg'),
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
            child: Text("1. แยกไข่แดงออกจากไข่ขาว",
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
              margin: const EdgeInsets.only(top: 730),
              child: Image(
                  image: AssetImage('images/5_1.jpg'),
                  height: 150,
                  width: 150)),
        ],
      );

  Widget cook2() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 910, left: 30),
            child: Text(
                "2. ซีอิ๊วญี่ปุ่น มิริน กระเทียมทุบ พริกขี้หนูซอยและต้นหอม",
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
            margin: const EdgeInsets.only(top: 930, left: 30),
            child: Text("จากนั้นใส่ไข่แดงลงไปดองแล้วนำไปแช่ตู้เย็นประมาณ",
                style: TextStyle(
                    fontFamily: 'Yellowtail',
                    fontSize: 16.0,
                    color: Color(0xFFedd2cb))),
          ),
        ],
      );

  Widget cook4() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 950, left: 30),
            child: Text(" 6-12 ชั่วโมง ขึ้นไปไข่จะเป็นก้อนเจลลี่",
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
              margin: const EdgeInsets.only(top: 990),
              child: Image(
                  image: AssetImage('images/5_2.jpg'),
                  height: 150,
                  width: 150)),
        ],
      );

  Widget cook5() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 1170, left: 30),
            child: Text("3. หมักเนื้อกับเกลือ พริกไทย เม็ดมะแขว่นบดและน้ำมัน",
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
            margin: const EdgeInsets.only(top: 1190, left: 30),
            child: Text("หมักทิ้งไว้ประมาณ 15-30 นาที",
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
            margin: const EdgeInsets.only(top: 1250, left: 30),
            child: Text("4. จากนั้นนำกระทะตั้งไฟให้ร้อน ใส่น้ำมันเล็กน้อย",
                style: TextStyle(
                    fontFamily: 'Yellowtail',
                    fontSize: 16.0,
                    color: Color(0xFFedd2cb))),
          ),
        ],
      );

  Widget cook8() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 1270, left: 30),
            child: Text("นำเนื้อลงไปย่างข้างละ 2 นาที",
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
              margin: const EdgeInsets.only(top: 1310),
              child: Image(
                  image: AssetImage('images/5_3.jpg'),
                  height: 150,
                  width: 150)),
        ],
      );

  Widget cook9() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 1510, left: 30),
            child: Text("5. ตักข้าวใส่ถ้วย หั่นเนื้อตามแนวขวางกับเส้นเนื้อ",
                style: TextStyle(
                    fontFamily: 'Yellowtail',
                    fontSize: 16.0,
                    color: Color(0xFFedd2cb))),
          ),
        ],
      );

  Widget cookPic4() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              margin: const EdgeInsets.only(top: 1550),
              child: Image(
                  image: AssetImage('images/5_4.jpg'),
                  height: 150,
                  width: 150)),
        ],
      );

  Widget cook10() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 1730, left: 30),
            child: Text(
                "6. วางเนื้อบนข้าวแล้วตักไข่แดงดองลงบนเนื้อ",
                style: TextStyle(
                    fontFamily: 'Yellowtail',
                    fontSize: 16.0,
                    color: Color(0xFFedd2cb))),
          ),
        ],
      );

  Widget cook11() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 1750, left: 30),
            child: Text(
                "โรยต้นหอมซอยและกระเทียมทอด",
                style: TextStyle(
                    fontFamily: 'Yellowtail',
                    fontSize: 16.0,
                    color: Color(0xFFedd2cb))),
          ),
        ],
      );

  Widget cookPic5() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              margin: const EdgeInsets.only(top: 1790, bottom: 30),
              child: Image(
                  image: AssetImage('images/5_5.jpg'),
                  height: 150,
                  width: 150)),
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
