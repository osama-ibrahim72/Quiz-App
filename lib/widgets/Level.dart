import 'package:flutter/material.dart';

import '../screens/quizs.dart';

class Level extends StatefulWidget {
  final int? l;
  final String? i;
  Level(this.l,this.i) {}
  @override
  State<Level> createState() => _LevelState();
}

class _LevelState extends State<Level> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 170,
      margin: EdgeInsets.only(top: 15),
      child: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Quizs_page()))
              .then((value) => setState(() {}));
        },
        child: Container(
          height: 170,
          width: 350,
          decoration: BoxDecoration(
              color: Color(0xFF6748fd),
              borderRadius: BorderRadius.circular(15)),
          child: Column(children: [
            Container(
                width: double.maxFinite,
                child: Center(
                    child: Text('level ' + widget.l.toString(),
                        style: TextStyle(color: Color(0xFF38e9bb), fontSize: 25)))),
            Container(
                child: Container(child: Image.asset(widget.i.toString()),
                width: 350,height: 135),)
          ]),
        ),
      ),
    );
  }
}
