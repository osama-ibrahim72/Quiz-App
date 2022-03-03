import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:task3/model/Questions.dart';
import 'package:task3/model/Solutions.dart';
import 'package:task3/screens/score.dart';

class Quizs_page extends StatefulWidget {
  @override
  State<Quizs_page> createState() => _Quizs_pageState();
}

class _Quizs_pageState extends State<Quizs_page> {
  late AudioPlayer player;
  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  static int true_ = 0;
  int choose = 0;
  static int num_of_q = 0;
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
                margin: EdgeInsets.only(left: 90, top: 35),
                child: Row(
                  children: [
                    Container(
                      child: Center(
                          child: Text(
                              'Question Number ' + (num_of_q + 1).toString(),
                              style: TextStyle(
                                  color: Color(0xFF38e9bb), fontSize: 25))),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 45),
                      child: Icon(Icons.menu_rounded, color: Colors.white),
                    )
                  ],
                )),
            Container(
              child: Column(children: [
                Container(
                  color: Colors.transparent,
                  margin: EdgeInsets.only(top: 50),
                  child: Text(questions.ques[num_of_q],
                      style: TextStyle(color: Colors.white, fontSize: 35)),
                ),
                Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Container(
                        height: 300,
                        child: Image.asset('assets/circle_question_1600.png'))),
                Container(
                    margin: EdgeInsets.only(top: 35),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          width: 300,
                          height: 50,
                          // color: Color(0xFF6748fd),
                          child: Center(
                            child: Container(
                              width: 300,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xFF6748fd),
                                  borderRadius: BorderRadius.circular(15)),
                              child: FloatingActionButton(
                                backgroundColor: Color(0xFF6748fd),
                                elevation: 0,
                                onPressed: () {
                                  choose = 1;
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 35),
                                  width: 300,
                                  height: 50,
                                  decoration:
                                      BoxDecoration(color: Colors.transparent),
                                  child: Row(
                                      // mainAxisSize: MainAxisSize.max,
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          margin: EdgeInsets.only(left: 15),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xFF38e9bb),
                                          ),
                                          child: Center(child: Text('1')),
                                        ),
                                        Container(
                                          child:
                                              Text(solutions.choo[num_of_q][0]),
                                          margin: EdgeInsets.only(left: 15),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          width: 300,
                          height: 50,
                          // color: Color(0xFF6748fd),
                          child: Center(
                            child: Container(
                              width: 300,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xFF6748fd),
                                  borderRadius: BorderRadius.circular(15)),
                              child: FloatingActionButton(
                                backgroundColor: Color(0xFF6748fd),
                                elevation: 0,
                                onPressed: () {
                                  choose = 2;
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 35),
                                  width: 300,
                                  height: 50,
                                  decoration:
                                      BoxDecoration(color: Colors.transparent),
                                  child: Row(
                                      // mainAxisSize: MainAxisSize.max,
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          margin: EdgeInsets.only(left: 15),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xFF38e9bb),
                                          ),
                                          child: Center(child: Text('2')),
                                        ),
                                        Container(
                                          child:
                                              Text(solutions.choo[num_of_q][1]),
                                          margin: EdgeInsets.only(left: 15),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          width: 300,
                          height: 50,
                          // color: Color(0xFF6748fd),
                          child: Center(
                            child: Container(
                              width: 300,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xFF6748fd),
                                  borderRadius: BorderRadius.circular(15)),
                              child: FloatingActionButton(
                                backgroundColor: Color(0xFF6748fd),
                                elevation: 0,
                                onPressed: () {
                                  choose = 3;
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 35),
                                  width: 300,
                                  height: 50,
                                  decoration:
                                      BoxDecoration(color: Colors.transparent),
                                  child: Row(
                                      // mainAxisSize: MainAxisSize.max,
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          margin: EdgeInsets.only(left: 15),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xFF38e9bb),
                                          ),
                                          child: Center(child: Text('3')),
                                        ),
                                        Container(
                                          child:
                                              Text(solutions.choo[num_of_q][2]),
                                          margin: EdgeInsets.only(left: 15),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          width: 300,
                          height: 50,
                          // color: Color(0xFF6748fd),
                          child: Center(
                            child: Container(
                              width: 300,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xFF6748fd),
                                  borderRadius: BorderRadius.circular(15)),
                              child: FloatingActionButton(
                                backgroundColor: Color(0xFF6748fd),
                                elevation: 0,
                                onPressed: () {
                                  choose = 4;
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 35),
                                  width: 300,
                                  height: 50,
                                  decoration:
                                      BoxDecoration(color: Colors.transparent),
                                  child: Row(
                                      // mainAxisSize: MainAxisSize.max,
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          margin: EdgeInsets.only(left: 15),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xFF38e9bb),
                                          ),
                                          child: Center(child: Text('4')),
                                        ),
                                        Container(
                                          child:
                                              Text(solutions.choo[num_of_q][3]),
                                          margin: EdgeInsets.only(left: 15),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(top: 35),
                    width: double.maxFinite,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          width: 75,
                          decoration: BoxDecoration(
                              color: Color(0xFF38e9bb),
                              borderRadius: BorderRadius.circular(15)),
                          child: FloatingActionButton(
                              elevation: 0,
                              backgroundColor: Color(0xFF38e9bb),
                              onPressed: () {
                                Navigator.pop(context);
                                if (num_of_q > 0) {
                                  num_of_q -= 1;
                                }
                              },
                              child: Container(child: Text('Previous'))),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          width: 75,
                          decoration: BoxDecoration(
                              color: Color(0xFF38e9bb),
                              borderRadius: BorderRadius.circular(15)),
                          child: FloatingActionButton(
                              elevation: 0,
                              backgroundColor: Color(0xFF38e9bb),
                              onPressed: () {
                                if (num_of_q + 1 < questions.ques.length) {
                                  if (choose == solutions.solu[num_of_q]) {
                                    true_ += 1;
                                    num_of_q += 1;
                                    Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Quizs_page()))
                                        .then((value) => setState(() {}));
                                  } else {
                                    num_of_q += 1;
                                    Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Quizs_page()))
                                        .then((value) => setState(() {}));
                                  }
                                } else {
                                  if (choose == solutions.solu[num_of_q]) {
                                    true_ += 1;
                                  }
                                  int T = true_;
                                  if ((true_ / num_of_q) * 100 >= 50) {
                                    player.setAsset('assets/bravo.mp3');
                                    player.play();
                                    true_ = 0;
                                    num_of_q = 0;
                                    Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Score_page(T,
                                                        questions.ques.length,((T / questions.ques.length) * 100))))
                                        .then((value) => setState(() {}));
                                  } else if ((true_ / num_of_q) * 100 < 50 &&
                                      (true_ / num_of_q) * 100 != 0) {
                                    player.setAsset('assets/ya_fa4il.mp3');
                                    player.play();
                                    true_ = 0;
                                    num_of_q = 0;
                                    Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Score_page(T,
                                                        questions.ques.length,((T / questions.ques.length) * 100))))
                                        .then((value) => setState(() {}));
                                  } else {
                                    player.setAsset('assets/saaafr.mp3');
                                    player.play();
                                    true_ = 0;
                                    num_of_q = 0;
                                    Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Score_page(T,
                                                        questions.ques.length,((T / questions.ques.length) * 100))))
                                        .then((value) => setState(() {}));
                                  }
                                }
                              },
                              child: Container(child: Text('Next'))),
                        ),
                      ],
                    )),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
