// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:widget_circular_animator/widget_circular_animator.dart';

class Test extends StatefulWidget {
  const Test({
    Key key,
    this.width,
    this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: WidgetCircularAnimator(
        size: 250,
        innerIconsSize: 3,
        outerIconsSize: 3,
        innerAnimation: Curves.easeInOutBack,
        outerAnimation: Curves.easeInOutBack,
        innerColor: Colors.deepPurple,
        outerColor: Colors.orangeAccent,
        innerAnimationSeconds: 10,
        outerAnimationSeconds: 10,
        child: Container(
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.grey[200]),
          child: Container(),
        ),
      ),
    );
  }
}
