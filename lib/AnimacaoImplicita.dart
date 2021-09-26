// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AnimacaoImplicita extends StatefulWidget {
  const AnimacaoImplicita({Key? key}) : super(key: key);

  @override
  _AnimacaoImplicitaState createState() => _AnimacaoImplicitaState();
}

class _AnimacaoImplicitaState extends State<AnimacaoImplicita> {
  bool _status = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Tem o mesmo nome da classe normal mas com 'Animated' na frente
        AnimatedContainer(
          padding: const EdgeInsets.all(20),
          width: _status ? 200 : 300,
          height: _status ? 300 : 200,
          color: _status ? Colors.purpleAccent : Colors.white,
          child: Image.asset("images/logo.png"),
          duration: const Duration(seconds: 2),
          curve: Curves.elasticInOut,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _status = !_status;
            });
          },
          child: const Text("Alterar"),
        ),
      ],
    );
  }
}
