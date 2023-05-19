import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/text_style/dua_screen_style.dart';

class dua_Page extends StatefulWidget {
  const dua_Page({Key? key}) : super(key: key);

  @override
  _dua_PageState createState() => _dua_PageState();
}

class _dua_PageState extends State<dua_Page> {
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
    'سوتے وقت کی دعا',
    [
      'اَللّٰھُمَّ بِاسْمِکَ اَمُوْتُ وَاَحْیٰی',
      'اے اللہ ! میں تیرا نام لے کر مرتا اور جیتا ہوں۔',
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'آئنہ دیکھتے وقت کی دعا',
    [
      'اللَّهُمَّ أَنْتَ حَسَّنْتَ خَلْقِي فَحَسِّنْ خُلُقِي',
      'اللہ عزوجل تو نے میری صورت اچھی بنائی'
          'تو میری سیرت (اخلاق) بھی اچھی کردے۔'
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'نیند سے بیدار ہونے کی دعا',
    [
      'اَلْحَمْدُلِلّٰہِ الَّذِیْ اَحْیَانَا بَعْدَ مَااَمَاتَنَا وَاِلَیْہِ النُّشُوْرُ ۔',
      'شکرہےاللہ کاجس نے ہمیں موت کے بعدزندہ کیا'
          'اوراسی کیطرف جاناہے ۔'
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'صبح کی دعا',
    [
      'اَصْبَحْنَا وَاَصْبَحَ الْمُلْکُ لِلّٰہِ رَبِّ الْعَالَمِیْنَ اَللّٰھُمَّ اِنِّیْ اَسْاَلُکَ  خَیْرَ '
          'ھٰذَاالْیَومِ وَفَتْحَہ وَنَصْرَہ وَنُوْرَہ وَبَرَ کَتَہ وَھُدَاہُ '
          'اَعُوْذُبِکَ مِنْ شَرِّ مَافِیْہِ وَشَرِّ مَابَعْدَہ۔',
      'ہم نے اللہ کے ملک میں صبح کی جوتمام جہانوں کا'
          'رب ہے، اے اللہ! میں آپ سے سؤال کرتا ہوں اس دن کی بھلائی کا'
          'فتح ونصرت،نوروبرکت اور ہدایت کا،اور اس  برائیوں سے'
          'پناہ مانگتا ہوں۔'
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'شام کی دعا',
    [
      'اَمْسَیْنَاوَاَمْسَی الْمُلْکُ لِلّٰہِ رَبِّ الْعَالَمِیْنَ اَللّٰہُمََّ اِنِّیْ اَسْئَلُک خَیْر'
          'ھَذِہِ اللَّیْلَةِ وَفَتْحَھَاوَنَصْرَھَا وَنُوْرَھَا وَبَرَکَتَہَا وَھُدَاھَاوَ'
          'اَعُوْذُ بِکَ مِنْ شَرِّ مَافِیْھَا وَشَرِّ مَابَعْدَھَا۔',
      'اے اللہ ! میں تیرا نام لے کر مرتا اور جیتا ہوں۔'
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'آب زم زم پیتے وقت کی دعا',
    [
      'اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْمَاً نَافِعَاًً وَرِزْقَاً وَاسِعَاًٍَ'
          'وَشِفَاءً مِنْ كُلِّ دَاء',
      'الٰہی عزوجل میں تجھ سے علم نافع کا اور رزق کی'
          'کشادگی کا اور بیماری سے شفایابی کا سوال کرتا'
          'ہوں۔'
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'کھانے کے شروع میں بسم اللہ پڑھنا بھول جائے',
    [
      'بِسْمِ اللّٰہِ اَوَّلَہ وَاٰخِرَہ۔',
      'اول وآخر اللہ تعالیٰ کے نام ہی سے شروع کرتا ہوں۔',
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'دودھ پینے کے بعدکی دعاء',
    [
      'اَللّٰھُمَّ بَارِکْ لَنَافِیْہِ وَزِدْنَامِنْہُ۔',
      'اے اللہ !اس میں ہمارے لئے برکت عطا فرما اوراس سے زیادہ عطا فرما۔',
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'کھانے کے بعد کی دعا',
    [
      'اَلْحَمْدُ لِلّٰہِ الَّذِیْ اَطْعَمَنَا وَسَقَانَاوَجَعَلَنَامُسْلِمِیْنَ ۔',
      'شکر ہے اللہ کا جس نے ہم کو کھلایا اورپلایا اور ہمیں مسلمان بنایا۔',
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'دعوت کھانے کے بعد کی دعا',
    [
      'اَللّٰھُمَّ اَطْعِمْ مَنْ اَطْعَمَنِیْ وَاسْقِ مَنْ سَقَانِیْ۔',
      'یااللہ ! کھلا اس کو جس نے مجھے کھلایا اور پلااس کو جس نے مجھے پلایا۔',
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'نیا عمامہ یا نئی چادر پہنتے وقت کی دعا',
    [
      'اللَّهُمَّ لَكَ الْحَمْدُ كَمَا كَسَوْتَنِيهِ أَسْأَلُكَ خَيْرَهُ وَخَيْرَ مَا صُنِعَ لَهُ وَأَعُوذُ مِنْ شَرِّهِ وَشَرِّ مَا صُنِعَ لَهُ',
      'یا للہ عزوجل ، تمام تعریفیں تیرے ہی لئے ہیں تو نے ہی مجھے (یہ چادر یا عمامہ) پہنایا ہے اور میں تجھ سے اس کی بھلائی طلب کر تا ہوں اور اس چیز کی بھلائی جس کے لئے یہ بنایا گیا ہے اور میں اس کےشر سے تیری پناہ مانگتا ہوں اور اس چیز کے شر سے بھی جس کے لئے اس کو بنایا گیا۔',
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'کپڑے پہننے کی دعا',
    [
      'اَلْحَمْدُ لِلّٰہِ الَّذِیْ کَسَانِیْ ھٰذَا وَرَزَقَنِیْہِ مِنْ غَیْرِ حَوْلٍ مِّنِّیْ وَلَاقُوَّةٍ۔',
      'تمام تعریفیں اس ذات گرامی کی جس نے ہمیں یہ پہنایا اوربغیر میری قوت وطاقت کے مجھے نوازا۔',
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'جب نیا لباس پہنے تو یہ دعامانگے',
    [
      'اَلْحَمْدُ لِلّٰہِ الَّذِیْ کَسَانِیْ مَآاُوَارِیْ بِہ عَوْرَتِیْ وَاَتَجَمَّلُ بِہ فِیْ حَیَاتِیْ ۔',
      'شکر ہے اللہ کا جس نے مجھ کو ایسا لباس پہنایا کہ میں اس سے اپنا سترڈھانپتا ہوں اور زینت کرتا ہوں اس سے اپنی زندگی میں۔',
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'مومن سے مومن کی ملاقات کے وقت کی دعا',
    [
      'السَّلَامُ عَلَيْكُمُ - وَعَلَيْكُمُ السَّلَامُ',
      'تم پر سلامتی ہو۔ اور تم پر بھی سلامتی ہو۔',
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'گھر میں داخل ہونے کی دعا',
    [
      'اَللّٰھُمَّ اِنِّیْ اَسْئَلُکَ خَیْرَالْمَوْلِجِ وَخَیْرَالْمَخْرَجِ بِسْمِ اللّٰہِ وَلَجْنَا وَبِسْمِ اللّٰہِ خَرَجْنَا وَعَلَی اللّٰہِ رَبِّنَا تَوَکَّلْنَا ۔',
      'اے اللہ !میں سؤال کرتا ہوں آپ سے اچھے داخلہ کا اور اچھی طرح نکلنے کا ،اللہ کے نام سے میں داخل ہوا ،اللہ کے نام سے میں نکلااور اپنے رب اللہ پر میں نے بھروسہ کیا ۔',
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'کسی مسلمان کو ہنستا دیکھ کر پڑھنے کی دعا',
    ['أَضْحَكَ اللَّهُ سِنَّكَ', 'اللہ عزوجل تجھے ہنستا رکھے۔'],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'گھر میں داخل ہونے کی دعا',
    [
      'اَللّٰھُمَّ اِنِّیْ اَسْئَلُکَ خَیْرَالْمَوْلِجِ وَخَیْرَالْمَخْرَجِ بِسْمِ اللّٰہِ وَلَجْنَا وَبِسْمِ اللّٰہِ خَرَجْنَا وَعَلَی اللّٰہِ رَبِّنَا تَوَکَّلْنَا ۔',
      'اے اللہ !میں سؤال کرتا ہوں آپ سے اچھے داخلہ کا اور اچھی طرح نکلنے کا ،اللہ کے نام سے میں داخل ہوا ،اللہ کے نام سے میں نکلااور اپنے رب اللہ پر میں نے بھروسہ کیا ۔'
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'گھر سے نکلنے کی دعا',
    [
      'بِسْمِ اللّٰہِ تَوَکَّلْتُ عَلَی اللّٰہِ لَاحَوْلَ وَلَاقُوَّةَ اِلَّابِاللّٰہِ۔',
      'اللہ تعالیٰ کے نام کے ساتھ گھر سے نکلتا ہوں،اللہ تعالیٰ پر میں نے بھروسہ کیا ،گناہوں سے بچنے اور عبادت کرنے کی توفیق اللہ تعالیٰ ہی دیتے ہیں۔'
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'بیت الخلاء میں داخل ہونے سے پہلے کی دعا',
    [
      'اَللّٰہُمَّ اِنِّیْ اَعُوْذُبِکَ مِنَ الْخُبُثِ وَالْخَبَآئِثِ۔',
      'اے اللہ !میں آپ کی پناہ پکڑتا ہوں تمام شیاطین (مردوں اورعورتوں) کے شرسے۔'
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'بیت الخلاء سے باہر آنے کے بعد کی دعا',
    [
      'اَلْحَمْدُ لِلّٰہِ الَّذِیْ اَذْھَبَ عَنِّی الْاَذٰی وَعَافَانِیْْ ۔',
      'شکر ہے اس اللہ کا جس نے مجھ سے گندگی دور کردی اور مجھ کوعافیت دی۔'
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'Cars',
    ['Vehicle no. 3', 'Vehicle no. 4', 'Vehicle no. 6'],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'Cars',
    ['Vehicle no. 3', 'Vehicle no. 4', 'Vehicle no. 6'],
    Icons.play_arrow_rounded,
  ),
];
