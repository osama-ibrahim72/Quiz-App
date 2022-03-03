import 'package:flutter/material.dart';
import 'package:task3/screens/home.dart';
import 'package:task3/widgets/Level.dart';

class Levels_page extends StatefulWidget {
  @override
  State<Levels_page> createState() => _Levels_pageState();
}

class _Levels_pageState extends State<Levels_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Color(0xFF1f1047)),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 35),
                child: Container(
                  width: double.maxFinite,child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15),decoration: BoxDecoration(
                            color: Color(0xFF1f1047), shape: BoxShape.circle),
                        child: FloatingActionButton(
                          backgroundColor: Color(0xFF6748fd),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Home_page()))
                                .then((value) => setState(() {}));
                          },
                          child: Container(
                            child: Icon(
                              Icons.arrow_back_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 300,child: Center(
                          child: Text('Levels',
                              style: TextStyle(color: Color(0xFF38e9bb), fontSize: 25)),
                        ),
                      ),
                    ],
                  ),
                )),
            Container(
              child: ListView(children: [
                Level(1,'assets/lvl_1.png'),
                Level(2,'assets/lvl_2.png'),
                Level(3,'assets/lvl_3.png'),
                Level(4,'assets/lvl_4.png'),
                Level(5,'assets/lvl_5.png'),
              ]),
              width: double.maxFinite,
              height: 790,margin: EdgeInsets.only(top: 15,right: 10,left: 10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black.withOpacity(0.4)),
            )
          ],
        ),
      ),
    );
  }
}
