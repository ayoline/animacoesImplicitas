// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AnimacaoTween extends StatefulWidget {
  const AnimacaoTween({Key? key}) : super(key: key);

  @override
  _AnimacaoTweenState createState() => _AnimacaoTweenState();
}

class _AnimacaoTweenState extends State<AnimacaoTween> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TweenAnimationBuilder(
        tween: Tween<double>(
          begin: 0,
          end: 6.28,
        ),
        duration: const Duration(seconds: 2),
        builder: (
          BuildContext context,
          double angulo,
          Widget? widget,
        ) {
          return Transform.rotate(
            angle: angulo,
            child: Image.asset("images/logo.png"),
          );
        },
      ),
    );
  }
}
