import 'package:flutter/material.dart';
import 'package:untitled3/pages/dua_page.dart';

class customButton extends StatelessWidget {
  var ok;
  // String a;
  String image;
  customButton({this.ok, required this.image});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.purple,
      // color: _bgColor,
      borderRadius: BorderRadius.all(Radius.circular(100.0)),
      child: IconButton(
        iconSize: 100,
        // height: 100,
        onPressed: ok,
        icon: Image.asset(image),
        // color: Colors.blue,
      ),
    );
  }
}

// class customButton extends StatefulWidget {
//   var ok;
//   // String a;
//   String image;
//   customButton({this.ok, required this.image});
//
//   @override
//   _customButtonState createState() => _customButtonState();
// }
//
// class _customButtonState extends State<customButton> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       iconSize: 100,
//       // height: 100,
//       onPressed: ok,
//       icon: Image.asset(widget.image),
//       // color: Colors.blue,
//     );
//   }
// }
