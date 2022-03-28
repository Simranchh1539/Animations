import 'package:animationpracticetest/animationbuilder_and_controller/animation_container.dart';
import 'package:animationpracticetest/tween_animations/tween_animation.dart';
import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  @override
  State<Heart> createState() => _HeartState();
}

class _HeartState extends State<Heart> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    _colorAnimation = ColorTween(begin: Colors.grey[400], end: Colors.red)
        .animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AnimationContainerfirst()));
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/background.jpg"))),
        child: AnimatedBuilder(
            animation: _controller,
            builder: (BuildContext context, _) {
              return Container(
                width: 100,
                height: 100,
                child: Card(
                  elevation: 4,
                  child: Positioned(
                    child: IconButton(
                      icon: Icon(Icons.favorite,
                          color: _colorAnimation.value, size: 40),
                      onPressed: () {
                        _controller.forward();
                      },
                    ),
                  ),
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => TweenAnimation()));
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
