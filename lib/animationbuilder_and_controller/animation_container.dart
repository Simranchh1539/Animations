import 'package:animationpracticetest/animationbuilder_and_controller/animated_builder.dart';
import 'package:flutter/material.dart';

class AnimationContainerfirst extends StatefulWidget {
  @override
  State<AnimationContainerfirst> createState() =>
      _AnimationContainerfirstState();
}

class _AnimationContainerfirstState extends State<AnimationContainerfirst> {
  double _margin = 0;
  double _opacity = 1;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animations")),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.jpg"), fit: BoxFit.cover)),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 200, bottom: 250, left: 80, right: 80),
          child: AnimatedContainer(
            alignment: Alignment.center,
            duration: Duration(seconds: 1),
            margin: EdgeInsets.all(_margin),
            width: 100,
            height: 100,
            color: _color,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text("Animatate Margin"),
                  onPressed: () => setState(
                    () => _margin = 50,
                  ),
                ),
                RaisedButton(
                  child: Text("Animatate Color"),
                  onPressed: () => setState(
                    () => _color = Colors.pink,
                  ),
                ),
                RaisedButton(
                    child: Text("Animatate Opacity"),
                    onPressed: () => setState(
                          () => _opacity = 0.5,
                        )),
                AnimatedOpacity(
                  opacity: _opacity,
                  duration: Duration(seconds: 2),
                  child: Text("Hide me", style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Heart()));
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
