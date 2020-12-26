import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int myAngle1 = 0;
  double scaleFactor1 = 1;
  int myAngle2 = 0;
  double scaleFactor2 = 1;
  int myAngle3 = 0;
  double scaleFactor3 = 1;
  int myAngle4 = 0;
  double scaleFactor4 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue[50]),
                    child: GestureDetector(
                      onTap: () {
                        rotate(1, myAngle1, scaleFactor1);
                      },
                      child: Transform.rotate(
                        angle: myAngle1.toDouble(),
                        child: Transform.scale(
                          scale: scaleFactor1.toDouble(),
                          child: Icon(
                            Icons.settings,
                            size: 50,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink[50]),
                    child: GestureDetector(
                      onTap: () {
                        rotate(2, myAngle2, scaleFactor2);
                      },
                      child: Transform.rotate(
                        angle: myAngle2.toDouble(),
                        child: Transform.scale(
                          scale: scaleFactor2.toDouble(),
                          child: Icon(
                            Icons.star,
                            size: 50,
                            color: Colors.pink,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green[50]),
                    child: GestureDetector(
                      onTap: () {
                        rotate(2, myAngle3, scaleFactor3);
                      },
                      child: Transform.rotate(
                        angle: myAngle3.toDouble(),
                        child: Transform.scale(
                          scale: scaleFactor3.toDouble(),
                          child: Icon(
                            Icons.star,
                            size: 50,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange[50]),
                    child: GestureDetector(
                      onTap: () {
                        rotate(2, myAngle4, scaleFactor4);
                      },
                      child: Transform.rotate(
                        angle: myAngle4.toDouble(),
                        child: Transform.scale(
                          scale: scaleFactor4.toDouble(),
                          child: Icon(
                            Icons.star,
                            size: 50,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 250,
              height: 500,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(50)),
                color: Colors.blue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.bookmark,
                        color: Colors.white,
                      ),
                      Text(
                        "Electronics",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      height: 250,
                      //   color: Colors.red,
                      child: Image.asset(
                        "images/fan.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 50.0, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$25",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star_outline,
                              color: Colors.white,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  rotate(int icon, int myAngle, double scaleFactor) async {
    switch (icon) {
      case 1:
        for (var i = 0; i < 10.5; i++)
          await Future.delayed(Duration(milliseconds: 25), () {
            setState(() {
              myAngle1 = i;
              scaleFactor1 += 0.1;
            });
          });
        for (var i = 0; i < 10.5; i++)
          await Future.delayed(Duration(milliseconds: 25), () {
            setState(() {
              myAngle1 = i;
              scaleFactor1 -= 0.1;
            });
          });
        break;
      case 2:
        for (var i = 0; i < 10.5; i++)
          await Future.delayed(Duration(milliseconds: 25), () {
            setState(() {
              myAngle2 = i;
              scaleFactor2 += 0.1;
            });
          });
        for (var i = 0; i < 10.5; i++)
          await Future.delayed(Duration(milliseconds: 25), () {
            setState(() {
              myAngle2 = i;
              scaleFactor2 -= 0.1;
            });
          });
        break;
      default:
        break;
    }
  }
}
