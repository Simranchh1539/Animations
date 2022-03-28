import 'package:animationpracticetest/animationbuilder_and_controller/animated_builder.dart';
import 'package:animationpracticetest/hero_animations/heroAnimation.dart';
import 'package:flutter/material.dart';

class TweenAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Heart()));
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/newww.jpeg"), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TweenAnimationBuilder(
                    tween: Tween<double>(begin: 50, end: 200),
                    duration: Duration(seconds: 2),
                    builder:
                        (BuildContext context, dynamic value, Widget child) {
                      return Icon(
                        Icons.ac_unit,
                        color: Colors.white,
                        size: value,
                      );
                    }),
                Text(
                  "Snow",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                ),
              ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MyHomePage(
                        title: "Makeup List",
                      )));
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
