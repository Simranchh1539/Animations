import 'package:animationpracticetest/hero_animations/mymakeupproduct.dart';
import 'package:flutter/material.dart';

class MyDetailPage extends StatefulWidget {
  MyMakeupProduct _makeupProduct;

  MyDetailPage(MyMakeupProduct makeupProduct) {
    _makeupProduct = makeupProduct;
  }

  @override
  _MyDetailPageState createState() => _MyDetailPageState(_makeupProduct);
}

class _MyDetailPageState extends State<MyDetailPage> {
  MyMakeupProduct makeupProduct;

  _MyDetailPageState(MyMakeupProduct makeupProduct) {
    this.makeupProduct = makeupProduct;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(makeupProduct.title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Container(
              height: 250,
              width: 400,
              child: Hero(
                transitionOnUserGestures: true,
                tag: makeupProduct,
                child: Transform.scale(
                  scale: 1.5,
                  child: Image.asset(
                    makeupProduct.img,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          Card(
              elevation: 8,
              margin: EdgeInsets.all(16),
              child: Container(
                padding: EdgeInsets.all(16),
                child: Text(
                  makeupProduct.body,
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                ),
              )),
        ],
      )),
    );
  }
}
