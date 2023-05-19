import 'package:flutter/material.dart';

class homeDua extends StatefulWidget {
  const homeDua({Key? key}) : super(key: key);

  @override
  _homeDuaState createState() => _homeDuaState();
}

class _homeDuaState extends State<homeDua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    'گھر میں داخل ہونے کی دعا',
    [
      'اَللّٰھُمَّ اِنِّیْ اَسْئَلُکَ خَیْرَالْمَوْلِجِ وَخَیْرَالْمَخْرَجِ بِسْمِ اللّٰہِ وَلَجْنَا وَبِسْمِ اللّٰہِ خَرَجْنَا وَعَلَی اللّٰہِ رَبِّنَا تَوَکَّلْنَا ۔',
      'اے اللہ !میں سؤال کرتا ہوں آپ سے اچھے داخلہ کا اور اچھی طرح نکلنے کا ،اللہ کے نام سے میں داخل ہوا ،اللہ کے نام سے میں نکلااور اپنے رب اللہ پر میں نے بھروسہ کیا ۔',
      'O Allah, I seek a good entry and a good exit. We take Allah name to enter and to exit and rely on Him who is our Lord.'
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'گھر سے نکلنے کی دعا',
    [
      'بِسْمِ اللّٰہِ تَوَکَّلْتُ عَلَی اللّٰہِ لَاحَوْلَ وَلَاقُوَّةَ اِلَّابِاللّٰہِ۔',
      'اللہ تعالیٰ کے نام کے ساتھ گھر سے نکلتا ہوں،اللہ تعالیٰ پر میں نے بھروسہ کیا ،گناہوں سے بچنے اور عبادت کرنے کی توفیق اللہ تعالیٰ ہی دیتے ہیں۔',
      'I depart with Allah name, relying on Him. It is Allah who saves us from sins with His guidance (the ability to do so)'
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'مومن سے مومن کی ملاقات کے وقت کی دعا',
    [
      'السَّلَامُ عَلَيْكُمُ - وَعَلَيْكُمُ السَّلَامُ',
      'تم پر سلامتی ہو۔ اور تم پر بھی سلامتی ہو۔',
      'Peace be upon you And peace be upon you too.'
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'کسی مسلمان کو ہنستا دیکھ کر پڑھنے کی دعا',
    [
      'أَضْحَكَ اللَّهُ سِنَّكَ',
      'اللہ عزوجل تجھے ہنستا رکھے۔',
      'Peace be upon you And peace be upon you too.'
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'مومن سے مومن کی ملاقات کے وقت کی دعا',
    [
      'السَّلَامُ عَلَيْكُمُ - وَعَلَيْكُمُ السَّلَامُ',
      'تم پر سلامتی ہو۔ اور تم پر بھی سلامتی ہو۔',
      'May Allah Almighty Keep you smiling.'
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'بیت الخلاء میں داخل ہونے سے پہلے کی دعا',
    [
      'اَللّٰہُمَّ اِنِّیْ اَعُوْذُبِکَ مِنَ الْخُبُثِ وَالْخَبَآئِثِ۔',
      'اے اللہ !میں آپ کی پناہ پکڑتا ہوں تمام شیاطین (مردوں اورعورتوں) کے شرسے۔',
      'O Allah (Almighty) I seek your refuge from impure Jinnat (male and female).'
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'بیت الخلاء سے باہر آنے کے بعد کی دعا',
    [
      'اَلْحَمْدُ لِلّٰہِ الَّذِیْ اَذْھَبَ عَنِّی الْاَذٰی وَعَافَانِیْْ ۔',
      'شکر ہے اس اللہ کا جس نے مجھ سے گندگی دور کردی اور مجھ کوعافیت دی۔',
      'Thanks to Allah Almighty Who removed pain from me and granted me relief.'
    ],
    Icons.play_arrow_rounded,
  ),
];
