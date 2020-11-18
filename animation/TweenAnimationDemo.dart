import 'package:flutter/material.dart';

class TweenAnimationDemo extends StatefulWidget {
  @override
  _AnimationDemoState createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<TweenAnimationDemo>
    with SingleTickerProviderStateMixin {

  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = new AnimationController(
        vsync: this,
        duration: Duration(seconds: 4)
    );

    Tween tween = Tween<double>(begin: 10.0, end: 300.0);

    animation = tween.animate(controller);

    animation.addListener(() {
      setState(() {
      });
    });

    controller.forward();

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      }
      else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: new Stack(
        children: <Widget>[
          new Positioned(child: Material(
            child: new Icon(Icons.local_shipping_outlined,
              textDirection: TextDirection.ltr,
              size: 88,
            ),
          ),
            left: animation.value,
            top: 55,)
        ],
        textDirection: TextDirection.ltr,
      ),
    );
  }
}