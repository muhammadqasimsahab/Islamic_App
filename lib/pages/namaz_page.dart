import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../text_style/dua_screen_style.dart';

class namazPage extends StatefulWidget {
  const namazPage({Key? key}) : super(key: key);

  @override
  _namazPageState createState() => _namazPageState();
}

class _namazPageState extends State<namazPage> {
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
                Container(
                  margin: EdgeInsets.only(top: 5),
                  width: 400,
                  child: Container(
                    width: 200,
                    height: 80,
                    child: Column(
                      children: [
                        Text(' مکمل نماز عربی اور اردو ترجمہ کے ساتھ',
                            style: DuaScreenStyles.namazStyles),
                        Text(
                          'قیام ، رکوع ، سجود اور قعدہ',
                          style: DuaScreenStyles.namazStyles,
                        ),
                      ],
                    ),

                    // Icon(Icons.android, size: 60, color: Colors.grey[100]),
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
                              Colors.deepOrange,
                              Colors.deepOrange,
                              Colors.deepOrange,
                              Colors.deepOrange,
                            ],
                            stops: const [
                              0.1,
                              0.3,
                              0.9,
                              1.0
                            ])),
                  ),
                ),
                Divider(height: 20, thickness: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Column(children: [
                    Image.asset('assets/Step-1.jpg'),
                    Image.asset('assets/Step-2.jpg'),
                    Image.asset('assets/Step-2b.jpg'),
                    Image.asset('assets/Step-3.jpg'),
                    Image.asset('assets/Step-4.png'),
                    Image.asset('assets/Step-6.jpg'),
                    Image.asset('assets/Step-7.jpg'),
                    Image.asset('assets/Step-8.jpg'),
                    Image.asset('assets/Step-9.jpg'),
                    Image.asset('assets/Step-10.jpg'),
                    Image.asset('assets/Step-11.jpg'),
                    Image.asset('assets/Step_12.png'),
                    // Image.asset('assets/Step-13.jpg'),
                    Image.asset('assets/Step-14.jpg'),
                    // Image.asset('assets/Step-15.jpg'),
                    Image.asset('assets/Steplast.png'),
                    Image.asset('assets/Step-16.jpg'),
                    Image.asset('assets/Step-17.jpg'),

                    Divider(thickness: 10, height: 10),
                    Image.asset('assets/Qunoot1.jpg'),

                    // Image.asset('assets/sana1.jpg'),
                    // Image.asset('assets/tawz.jpg'),
                    // Image.asset('assets/alhamdo.jpg'),

                    // Text(
                    //     'سب سے پہلے نیت کر کے سیدھے کھڑے ہوں گے اور تکبیر تحریمہ',
                    //     style: DuaScreenStyles.namazStyles1),
                    // Text(
                    //   'اللہ اکبر" کہتے ہوئے ہاتھ کانوں تک بلند کریں گے اور ہاتھ باندھ',
                    //   style: DuaScreenStyles.namazStyles1,
                    // ),
                    // Text(
                    //   'لیں گے  ( ناف کے نیچے ایک دوسرے کے اوپر، نیچے بائیاں اور',
                    //   style: DuaScreenStyles.namazStyles1,
                    // ),
                    // Text(
                    //   'اوپر دائیاں) اور ثناء سے پڑھنا شروع کریں گے:',
                    //   style: DuaScreenStyles.namazStyles1,
                    // ),
                  ]),
                ),
                // Text(
                //   'سب سے پہلے نیت کر کے سیدھے کھڑے ہوں گے اور تکبیر تحریمہ ( اللہ اکبر)کہتے ہوئے ہاتھ کانوں تک بلند کریں گے اور ہاتھ باندھ لیں گے  ( ناف کے نیچے ایک دوسرے کے اوپر، نیچے بائیاں اور اوپر دائیاں) اور ثناء سے پڑھنا شروع کریں گے:',
                //   style: DuaScreenStyles.namazStyles1,
                // )
              ],
            )
          ],
        ));
  }
}
