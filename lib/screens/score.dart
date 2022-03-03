import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task3/screens/levels.dart';

class Score_page extends StatefulWidget {
  final int? true_, all;
  final double? sc;
  Score_page(this.true_, this.all,this.sc) {}
  @override
  State<Score_page> createState() => _Score_pageState();
}

class _Score_pageState extends State<Score_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Color(0xFF1f1047)),
        child: Container(
            margin: EdgeInsets.only(top: 35),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Results',
                    style: TextStyle(color: Color(0xFF38e9bb), fontSize: 35),
                  ),
                ),
                Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 25, right: 200),
                        child: Text(
                          'Tatal correct answers',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 10, right: 200),
                        child: Text(
                          widget.true_.toString() +
                              ' out of ' +
                              widget.all.toString() +
                              ' Questions',
                          style:
                              TextStyle(color: Color(0xFF38e9bb), fontSize: 18),
                        )),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      width: 320,
                      height: 500,
                      decoration: BoxDecoration(
                          color: Color(0xFF6748fd),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Container(
                      margin: EdgeInsets.only(top: 50),child: Text('Your final score is',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30))),
                          Container(
                              height: 310,width: 310,decoration: BoxDecoration(
                                  color: Color(0xFFfac32a),
                                  shape: BoxShape.circle),
                              margin: EdgeInsets.only(top: 40,left: 10, right: 10),child: Center(child: Text(widget.sc.toString(),style: TextStyle(
                              color: Colors.white, fontSize: 75))),
                          )],
                      ),
                    ),
                    Container(
                        height: 75,
                        width: 350,
                        margin: EdgeInsets.only(top: 75),
                        decoration: BoxDecoration(
                            color: Color(0xFF6748fd),
                            borderRadius: BorderRadius.circular(20)),
                        child: FloatingActionButton(
                          elevation: 0,
                          backgroundColor: Color(0xFF6748fd),
                          onPressed: () {
                            Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Levels_page()))
                                .then((value) => setState(() {}));
                          },
                          child: Container(
                            decoration:
                                BoxDecoration(color: Colors.transparent),
                            child: Text(
                              'Go back to Levels',
                              style: TextStyle(
                                  color: Color(0xFF38e9bb), fontSize: 25),
                            ),
                          ),
                        )),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
