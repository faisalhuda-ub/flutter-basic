import 'package:flutter/material.dart';

class AnimationWidgetDemo extends StatefulWidget {
  @override
  _AnimationWidgetDemoState createState() => _AnimationWidgetDemoState();
}

class _AnimationWidgetDemoState extends State<AnimationWidgetDemo>
    with SingleTickerProviderStateMixin{

  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: 6)
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

    controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RotationTransition(
        turns: controller,
        child: Text("\u{1F43A}",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 101.0),),
      ),
    );
  }
}
