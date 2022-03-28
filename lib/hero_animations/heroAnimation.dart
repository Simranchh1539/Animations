import 'package:animationpracticetest/hero_animations/details_about_product.dart';
import 'package:animationpracticetest/hero_animations/mymakeupproduct.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<MyMakeupProduct> items = new List<MyMakeupProduct>();

  _MyHomePageState() {
    items.add(
      new MyMakeupProduct(
          "assets/Lipstic1.jpg",
          "Lakme 9 to 5 Scarlet Drill Lipstick",
          "The Lakmé 9 to 5 lipstick range has been around for a while. The lipstick comes in a moisture matte finish and does not dry out the lips. The long stay claim is true. It is a non-transferable lipstick and will suit medium to dusky skin tones pretty well."),
    );
    items.add(new MyMakeupProduct(
        "assets/Lipstic3.jpg",
        " Lakme Absolute Creme Lipstick Royal Rouge",
        "Lakme Absolute Creme Lipstick Royal Rouge is a combination of pink and peach shades. It has a matte-ish texture that helps cover the pigmented lips. A must-buy shade that looks good on everyone!"));
    items.add(
      new MyMakeupProduct(
          "assets/Lipstic2.jpg",
          "Lakme Absolute Sculpt Hi-Definition Matte Lipstick – Red Envy",
          "Red Envy is one of the most vibrant matte lipsticks from Lakme Absolute. The texture is smooth and non-drying that settles into a matte finish. It is pigmented and stays on for approximately four hours, and then fades slowly. It’s a must-have!"),
    );
    items.add(new MyMakeupProduct(
        "assets/Lipstic4.jpg",
        "Lakme Enrich Satin Lip Color 128",
        "This one is a beautiful fuchsia pink lipstick. The texture of this lipstick is very smooth and creamy, and it goes opaque in a single swipe. It is suitable lipstick for women with fair complexion."));
    items.add(new MyMakeupProduct(
        "assets/Lipstic5.jpg",
        " Lakme 9 to 5 Lip Color Pink Colar",
        "This Lakme 9 to 5 Lip Color Pink Colar lipstick is very different from the usual matte lipsticks. It provides an impeccably styled look and allows a hassle-free transition from the desk to the office party."));
  }

  Widget MakeupCell(BuildContext ctx, int index) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(content: Text("Tap"));
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MyDetailPage(items[index])));
      },
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Card(
            margin: EdgeInsets.all(5),
            elevation: 5.0,
            child: Container(
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SingleChildScrollView(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 80,
                          height: 80,
                          child: Hero(
                            tag: items[index],
                            child: Image.asset(items[index].img),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Text(
                            items[index].title,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.navigate_next, color: Colors.black38),
                ],
              ),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: items.length,
              itemBuilder: (context, index) => MakeupCell(context, index),
            ),
          ],
        ),
      ),
    );
  }
}
