import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  const FadeAnimation({super.key, required this.delay, required this.child});

  @override
  Widget build(BuildContext context) {
    return PlayAnimationBuilder<double>(
      delay: Duration(milliseconds: (500 * delay).round()), // Delay vaqt
      duration: const Duration(seconds: 1), // Animatsiya davomiyligi
      tween: Tween<double>(begin: 0.0, end: 1.0), // Tween orqali opacity animatsiyasi
      builder: (context, value, child) {
        return Opacity(
          opacity: value, // Hozirgi animatsiya qiymati
          child: child,
        );
      },
      child: child,
    );
  }
}
