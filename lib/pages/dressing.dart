import 'package:flutter/material.dart';

class dressing_page extends StatefulWidget {
  const dressing_page({Key? key}) : super(key: key);

  @override
  _dressing_pageState createState() => _dressing_pageState();
}

class _dressing_pageState extends State<dressing_page> {
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
    'کپڑے پہننے کی دعا',
    [
      'اَلْحَمْدُ لِلّٰہِ الَّذِیْ کَسَانِیْ ھٰذَا وَرَزَقَنِیْہِ مِنْ غَیْرِ حَوْلٍ مِّنِّیْ وَلَاقُوَّةٍ۔',
      'تمام تعریفیں اس ذات گرامی کی جس نے ہمیں یہ پہنایا اوربغیر میری قوت وطاقت کے مجھے نوازا۔',
      'All Praise is for Allah who has clothed me with this garment and provided it for me, with no power nor might from myself.'
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'جب نیا لباس پہنے تو یہ دعامانگے',
    [
      'اَلْحَمْدُ لِلّٰہِ الَّذِیْ کَسَانِیْ مَآاُوَارِیْ بِہ عَوْرَتِیْ وَاَتَجَمَّلُ بِہ فِیْ حَیَاتِیْ ۔',
      'شکر ہے اللہ کا جس نے مجھ کو ایسا لباس پہنایا کہ میں اس سے اپنا سترڈھانپتا ہوں اور زینت کرتا ہوں اس سے اپنی زندگی میں۔',
      'All praise belongs to Allah who adorned me with clothing by which I cover (hide) my private areas and by which I obtain beauty in my life.'
    ],
    Icons.play_arrow_rounded,
  ),
  new Vehicle(
    'جب نیا لباس پہنے تو یہ دعامانگے',
    [
      'اَلْحَمْدُ لِلّٰہِ الَّذِیْ کَسَانِیْ مَآاُوَارِیْ بِہ عَوْرَتِیْ وَاَتَجَمَّلُ بِہ فِیْ حَیَاتِیْ ۔',
      'شکر ہے اللہ کا جس نے مجھ کو ایسا لباس پہنایا کہ میں اس سے اپنا سترڈھانپتا ہوں اور زینت کرتا ہوں اس سے اپنی زندگی میں۔',
      'All praise belongs to Allah who adorned me with clothing by which I cover (hide) my private areas and by which I obtain beauty in my life.'
    ],
    Icons.play_arrow_rounded,
  ),
];
