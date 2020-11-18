import 'package:flutter/material.dart';

class CurveAnimationDemo extends StatefulWidget {
  @override
  _CurveAnimationDemoState createState() => _CurveAnimationDemoState();
}

class _CurveAnimationDemoState extends State<CurveAnimationDemo>
    with SingleTickerProviderStateMixin{

  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: 5)
    );

    CurvedAnimation curvedAnimation = CurvedAnimation(
        parent: controller,
        curve: Curves.bounceOut
    );

    Tween myTween = Tween<double>(begin: 50.0, end: 660.0);
    animation = myTween.animate(curvedAnimation);

    animation.addListener(() {
      setState(() {

      });
    });

    controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: new Text("\u{26BE}",
            textDirection: TextDirection.ltr,
            style: new TextStyle(
                fontSize: 90.0
            ),
          ),
          left: 50,
          top: animation.value,
        )
      ],
      textDirection: TextDirection.ltr,
    );
  }
}