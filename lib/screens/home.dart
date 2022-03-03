import 'package:flutter/material.dart';
import 'package:task3/screens/levels.dart';

class Home_page extends StatefulWidget {
  @override
  State<Home_page> createState() => _HomeState();
}

class _HomeState extends State<Home_page> {
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
                child: Image.asset('assets/images.png')),
            Container(
                margin: EdgeInsets.only(top: 100),
                child: Text("let's start!",
                    style: TextStyle(color: Color(0xFF38e9bb), fontSize: 25))),
            Container(
              height: 75,
              width: 300,
              margin: EdgeInsets.only(top: 100),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Levels_page()))
                      .then((value) => setState(() {}));
                },
                child: Container(
                    height: double.maxFinite,
                    width: double.maxFinite,
                    child: Center(
                        child: Text('Start',
                            style:
                                TextStyle(color: Colors.white, fontSize: 25))),
                    decoration: BoxDecoration(
                        color: Color(0xFF6748fd),
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            Container(
                decoration: BoxDecoration(
                    color: Color(0xFF6748fd),
                    borderRadius: BorderRadius.circular(15)),
                margin: EdgeInsets.only(top: 10),
                height: 75,
                width: 300,
                child: Center(
                    child: Text('About',
                        style: TextStyle(color: Colors.white, fontSize: 25)))),
          ],
        ),
      ),
    );
  }
}
