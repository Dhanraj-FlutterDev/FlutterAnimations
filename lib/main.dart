import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

void main() => runApp(MaterialApp(
  home: AnimationDemo(),
));

class AnimationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animations'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              PlayAnimation<Color>(
                tween: Colors.green.tweenTo(Colors.yellow),
                builder: (context,child,value){
                  return Container(
                  color: value,
                    width: 100.0,
                    height: 100.0,
                  );
                },
              ),
              SizedBox(height: 50.0),
              MirrorAnimation<double>(tween:(-100.0).tweenTo(100.0),
              builder: (context,child,value){
                return Transform.translate(offset:Offset(value,0),
                child: child,
                );
              },
                child: Container(
                  color: Colors.green,
                  height: 100.0,
                  width: 200.0,
                ),
              ),
              SizedBox(height: 50.0),
              LoopAnimation<double>(tween: 0.0.tweenTo(10.0),
              duration: 2.seconds,
              builder: (context,child,value){
                return Transform.scale(scale: value,
                child: child,
                );
              },
                child: Text('Hello!'),
              ),




            ],
          ),
        ),
      ),
    );
  }
}
