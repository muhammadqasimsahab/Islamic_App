import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/buttons/buttons.dart';
import 'package:untitled3/pages/dressing.dart';
import 'package:untitled3/pages/food.dart';
import 'package:untitled3/pages/home_dua.dart';
import 'package:untitled3/pages/namaz_page.dart';
import 'package:untitled3/pages/safer_page.dart';
import 'package:untitled3/pages/wuzu_page.dart';

import 'dua_page.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Container(
          decoration: BoxDecoration(
              // borderRadius: const BorderRadius.all(Radius.circular(42)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: const Offset(0, 20),
                  blurRadius: 30,
                  spreadRadius: -5,
                ),
              ],
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.green,
                    Colors.purple,
                    Colors.tealAccent,
                    Colors.yellowAccent,
                  ],
                  stops: const [
                    0.2,
                    0.3,
                    0.3,
                    1.0
                  ])),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 5),
                width: 400,
                child: Container(
                  width: 200,
                  height: 200,
                  child: Image.asset('assets/text6.png'),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(42)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: const Offset(0, 20),
                          blurRadius: 30,
                          spreadRadius: -5,
                        ),
                      ],
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.deepPurple,
                            Colors.yellowAccent,
                            Colors.deepOrange,
                            Colors.yellowAccent,
                          ],
                          stops: const [
                            0.2,
                            0.3,
                            0.3,
                            1.0
                          ])),
                ),
              ),
              // Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Image.asset('assets/text6.png')),
              Container(
                margin: EdgeInsets.only(left: 50.0, right: 50.0, top: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: customButton(
                        ok: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => namazPage()));
                        }),
                        image: 'assets/namaz.png',
                      ),
                    ),
                    SizedBox(width: 70),
                    Expanded(
                      child: customButton(
                        ok: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => dua_Page()));
                        }),
                        image: 'assets/dua.png',
                      ),
                    ),
                  ],
                ),
              ),
              /////////////////////////////////////////
              Container(
                margin: EdgeInsets.only(left: 50.0, right: 50.0, top: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: customButton(
                        ok: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => homeDua()));
                        }),
                        image: 'assets/family.png',
                      ),
                    ),
                    SizedBox(width: 70),
                    Expanded(
                      child: customButton(
                        ok: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => dressing_page()));
                        }),
                        image: 'assets/dressing.png',
                      ),
                    ),
                  ],
                ),
              ),
              ////////////////////////////////////
              Container(
                margin: EdgeInsets.only(left: 50.0, right: 50.0, top: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: customButton(
                        ok: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => saferPage()));
                        }),
                        image: 'assets/safer.png',
                      ),
                    ),
                    SizedBox(width: 70),
                    Expanded(
                      child: customButton(
                        ok: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => foodPage()));
                        }),
                        image: 'assets/food.png',
                      ),
                    ),
                  ],
                ),
              ),
              /////////////////
              Container(
                margin: EdgeInsets.only(left: 50.0, right: 50.0, top: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: customButton(
                        ok: (() {}),
                        image: 'assets/saal.png',
                      ),
                    ),
                    SizedBox(width: 70),
                    Expanded(
                      child: customButton(
                        ok: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => wuzuPage()));
                        }),
                        image: 'assets/wozo.png',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
