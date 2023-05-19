import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/text_style/dua_screen_style.dart';

class wuzuPage extends StatefulWidget {
  const wuzuPage({Key? key}) : super(key: key);

  @override
  _wuzuPageState createState() => _wuzuPageState();
}

class _wuzuPageState extends State<wuzuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('24 Hours Of Life')),
        body: ListView(
          physics: BouncingScrollPhysics(),
          dragStartBehavior: DragStartBehavior.start,
          children: [
            Column(
              children: [
                Column(
                  children: [
                    Container(
                      height: 150,
                      child: Center(
                        child: Text(
                          'وضو کا طریقہ',
                          style: DuaScreenStyles.wuzuStyle,
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(42)),
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
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Image.asset('assets/Wazoo 1.jpg'),
                    ),
                    Container(
                      child: Image.asset('assets/wuzu.jpg'),
                    )
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
