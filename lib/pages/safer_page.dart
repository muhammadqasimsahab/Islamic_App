import 'package:flutter/material.dart';

class saferPage extends StatefulWidget {
  const saferPage({Key? key}) : super(key: key);

  @override
  _saferPageState createState() => _saferPageState();
}

class _saferPageState extends State<saferPage> {
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
    'سفر کے لئے نکلنے کی دعا',
    [
      'بِسْمِ اللّٰہِ تَوَکَّلْتُ عَلَی اللّٰہِ، اَللّٰھُمَّ بِکَ اَصُوْلُ وَبِکَ اَحُوْلُ وَبِکَ اَسِیْرُ، اَللّٰہُمَّ اَنْتَ الصَّاحِبُ فِی السَّفَرِ وَالْخَلِیْفَةُ فِی الْاَھْلِ ۔',
      'اللہ تعالیٰ کے نام کے ساتھ سفر شروع کرتا ہوں،اللہ پر میں نے بھروسہ کیا ،اے اللہ! آپ ہی کی مدد سے جاتا ہوں اور آپ ہی کی مدد سے واپس آتاہوں اور آپ ہی کی مددسے چلتا ہوں، اے اللہ ! آپ ہی رفیق ہیں سفر میں اور خبر گیر ہیں گھر بار میں۔',
      'In the name of Allah, I place my trust in Allah. O Allah, it is with Your help that I attack (the enemy) and with Your help I defend and with Your help I depart. O Allah, You are The Companion on the journey and The Successor over the family'
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'سواری پربیٹھ کر یہ دعاء پڑھے',
    [
      'اَلْحَمْدُ لِلّٰہِ ،سُبْحٰنَ الَّذِیْ سَخَّرَلَنَاھٰذَاوَمَاکُنَّالَہ مُقْرِنِیْنَ وَاِنَّااِلٰی رَبِّنَالَمُنْقَلِبُوْنَ۔',
      'شکر ہے اللہ کا ،پاکی ہے اس ذات کے لئے جس نے اِس کو ہمارے قبضہ میں کردیا اور ہم تواس کو قابو کرنے والے نہ تھے اور ہم پر وردگار کی طرف ضرور لوٹنے والے ہیں۔',
      'all praise for Allah, How far from imperfections He is, The One Who has placed this (transport) at our service, and we ourselves would not have been capable of doing so, and to our Lord is our final destination,'
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'شہریا بستی میں داخل ہونے کی دعا',
    [
      'اَللّٰھُمَّ بَارِکْ لَنَافِیْھَا، اَللّٰھُمَّ ارْزُقْنَاجَنَاھَاوَحَبِّبْنَا اِلٰی اَھْلِھَاوَحَبِّبْ صَالِحِیْ اَھْلِھَااِلَیْنَا۔',
      'اے اللہ !ہمیں اس شہر میں برکت دیجئے ، یااللہ ! ہمیں اس کے ثمرات نصیب کیجئے اور اہل شہر کے نزدیک عزیز کیجئے اور یہاںکے نیک لوگوں کی محبت ہمیں دیجئے۔',
      'O Allah, You grant us good in it (the city/populated area). O Allah, grant us the fruit of this place and create love in the people for us and create love in our hearts for the righteous people (of this area).'
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'کسی منزل پر پہنچنے کی دعاء',
    [
      'اَعُوْذُبِکَلِمَاتِ اللّٰہِ التَّآمَّاتِ مِنْ شَرِّ مَاخَلَقَ۔',
      'میں پناہ پکڑتاہوں اللہ تعالیٰ کی کامل باتوں کی ،تمام مخلوق کی برائی سے۔',
      'I seek refuge in Allah by His complete words from the evils of the creation'
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'بازار جائے تویہ دعا پڑھے',
    [
      'بِسْمِ اللّٰہِ، اَللّٰھُمَّ اِنِّیْ اَسْئَلُکَ خَیْرَ ھٰذِہِ السُّوْقِ وَخَیْرَمَافِیْھَاوَاَعُوْذُبِکَ مِنْ شَرِّ ھَا وَشَرِّمَافِیْھَااَللّٰھُمَّ اِنِّیْ اَعُوذُبِکَ اَنْ اُصِیْبَ فِیْھَایَمِیْنًا فَاجِرَةً اَوْصَفْقَةً خَاسِرَةً۔',
      'اللہ کے نام سے بازار میں داخل ہوتا ہوں،یااللہ! میں آپ سے اس بازار کی بھلائی مانگتاہوں اور اس چیز کی بھلائی جو اس میں ہے اور آپ کی پناہ چاہتا ہوں اس کی برائی سے اوراس چیز کی برائی سے جو اس میں ہے، یااللہ! میں آپ کی پناہ چاہتا ہوں اس سے کہ میں اس بازار میں جھوٹی قسم اور خسارہ کے معاملہ میں پڑجائوں۔',
      'I entered in the name of Allah, I seek refuge in You (Allah) for the good in the bazaar and for the good of what is in it (the bazaar). O Allah, I seek refuge in you from false oaths and deception in transaction'
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'سفر سے واپسی کی دعا',
    [
      'اٰ ئِبُوْنَ تَآئِبُوْنَ عَابِدُوْنَ سَاجِدُوْنَ لِرَبِّنَاحَامِدُوْنَ ۔',
      'ہم سفر سے آنیوالے ہیں ،توبہ کرنے والے ہیں، عبادت کرنے والے ہیں ،سجدہ کرنے والے ہیں اور اپنے پروردگارکی حمد کرنے والے ہیں۔',
      'We return, repent, worship and praise our Lord.'
    ],
    Icons.play_arrow_rounded,
  ),
];
