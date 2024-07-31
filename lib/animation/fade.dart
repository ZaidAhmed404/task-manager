import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:simple_animations/simple_animations.dart';
class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    var control = Control.play;

    return CustomAnimationBuilder(
      control: control, // bind variable with control instruction
      tween: Tween<double>(begin: -100.0, end: 100.0),
      duration: const Duration(seconds: 1),
      child: child,
      builder: (context, value, child) {
      return  Transform.translate(
            offset: Offset(value, 0), child: child);
      },

    );
  }
}
