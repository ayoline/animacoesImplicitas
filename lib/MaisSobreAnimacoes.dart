// ignore_for_file: file_names
import 'package:flutter/material.dart';

class MaisSobreAnimacoes extends StatefulWidget {
  const MaisSobreAnimacoes({Key? key}) : super(key: key);

  @override
  _MaisSobreAnimacoesState createState() => _MaisSobreAnimacoesState();
}

class _MaisSobreAnimacoesState extends State<MaisSobreAnimacoes>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation? _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = Tween<double>(
      begin: 0,
      end: 6,
    ).animate(_animationController!);
  }

  @override
  void dispose() {
    super.dispose();

    _animationController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _animationController!.forward();

    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: AnimatedBuilder(
        animation: _animation!,
        child: Image.asset("images/logo.png"),
        builder: (context, widget) {
          return Transform.rotate(
            angle: _animation!.value,
            child: widget,
          );
        },
      ),
    );
  }
}
