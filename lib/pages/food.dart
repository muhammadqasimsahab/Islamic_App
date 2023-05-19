import 'package:flutter/material.dart';

class foodPage extends StatefulWidget {
  const foodPage({Key? key}) : super(key: key);

  @override
  _foodPageState createState() => _foodPageState();
}

class _foodPageState extends State<foodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('24 Hours Of Life')),
      body: ListView.builder(
        itemCount: vehicles.length,
        itemBuilder: (context, i) {
          return new ExpansionTile(
            title: new Text(
              vehicles[i].title,
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            children: <Widget>[
              new Column(
                children: _buildExpandableContent(vehicles[i]),
              ),
            ],
          );
        },
      ),
    );
  }

  _buildExpandableContent(Vehicle vehicle) {
    List<Widget> columnContent = [];

    for (String content in vehicle.contents)
      columnContent.add(
        new ListTile(
          title: new Text(
            content,
            style: new TextStyle(fontSize: 18.0),
          ),
          leading: new Icon(vehicle.icon),
        ),
      );

    return columnContent;
  }
}

class Vehicle {
  final String title;
  List<String> contents = [];
  final IconData icon;

  Vehicle(this.title, this.contents, this.icon);
}

List<Vehicle> vehicles = [
  new Vehicle(
    'کھانے سے پہلے کی دعا',
    [
      'بِسْمِ اللَّهِ وَعَلَى بَرَكَةِ اللَّهِ',
      'میں نے الله کے نام کے ساتھ اور الله کی برکت پر کھانا شروع کیا',
      'In the name of Allah and with the blessings of Allah I begin (eating).'
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'کھانے کے بعد کی دعا',
    [
      'اَلْحَمْدُ لِلّٰہِ الَّذِیْ اَطْعَمَنَا وَسَقَانَاوَجَعَلَنَامُسْلِمِیْنَ ۔',
      'شکر ہے اللہ کا جس نے ہم کو کھلایا اورپلایا اور ہمیں مسلمان بنایا۔',
      'Thanks to Allah Azzawajal who fed us and made us among Muslims'
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'کھانے کے شروع میں بسم اللہ پڑھنا بھول جائے',
    [
      'بِسْمِ اللّٰہِ اَوَّلَہ وَاٰخِرَہ۔',
      'اول وآخر اللہ تعالیٰ کے نام ہی سے شروع کرتا ہوں۔',
      'Allah Azzawajal in the name of before and after it.'
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'دودھ پینے کے بعدکی دعاء',
    [
      'اَللّٰھُمَّ بَارِکْ لَنَافِیْہِ وَزِدْنَامِنْہُ۔',
      'اے اللہ !اس میں ہمارے لئے برکت عطا فرما اوراس سے زیادہ عطا فرما۔',
      'O Allah Azzawajal give us abundance in this and grant us more then this.'
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'آب زم زم پیتے وقت کی دعا',
    [
      'اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْمَاً نَافِعَاًً وَرِزْقَاً وَاسِعَاًَ وَشِفَاءً مِنْ كُلِّ دَاءٍ',
      'الٰہی عزوجل میں تجھ سے علم نافع کا اور رزق کی کشادگی کا اور بیماری سے شفایابی کا سوال کرتا ہوں۔',
      'Allah Azzawajal I ask you for beneficial knowledge, increase in provision and cure from illness.'
    ],
    Icons.play_arrow_rounded,
  ),
];
