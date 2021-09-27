// ignore_for_file: file_names
import 'package:flutter/material.dart';

class AnimacoesExplicitasConstruidas extends StatefulWidget {
  const AnimacoesExplicitasConstruidas({Key? key}) : super(key: key);

  @override
  _AnimacoesExplicitasConstruidasState createState() =>
      _AnimacoesExplicitasConstruidasState();
}

class _AnimacoesExplicitasConstruidasState
    extends State<AnimacoesExplicitasConstruidas>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  AnimationStatus? _animationStatus;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )
      ..repeat()
      ..addStatusListener((status) {
        _animationStatus = status;
      });
  }

  @override
  void dispose() {
    super.dispose();

    _animationController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: 300,
            height: 400,
            child: RotationTransition(
              alignment: Alignment.center,
              child: Image.asset("images/logo.png"),
              turns: _animationController!,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_animationStatus == AnimationStatus.dismissed) {
                _animationController!.repeat();
              } else {
                _animationController!.reverse();
              }
            },

            /*
            onPressed: () {
              if (_animationController!.isAnimating) {
                _animationController!.stop();
              } else {
                _animationController!.repeat();
              }
            },*/
            child: const Text("Pressione"),
          ),
        ],
      ),
    );
  }
}
