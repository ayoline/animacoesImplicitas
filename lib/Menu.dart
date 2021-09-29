// ignore_for_file: file_names
import 'package:animacoes/AnimacaoImplicita.dart';
import 'package:animacoes/AnimacaoTween.dart';
import 'package:animacoes/AnimacoesExplicitasConstruidas.dart';
import 'package:animacoes/BotaoAnimado.dart';
import 'package:animacoes/CriandoAnimacoesBasicas.dart';
import 'package:animacoes/MaisSobreAnimacoes.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: const Text("Animacao Implícita"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AnimacaoImplicita(),
              ),
            );
          },
        ),
        ElevatedButton(
          child: const Text("Animacoes Basicas"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CriandoAnimacoesBasicas(),
              ),
            );
          },
        ),
        ElevatedButton(
          child: const Text("Botao Animado"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BotaoAnimado(),
              ),
            );
          },
        ),
        ElevatedButton(
          child: const Text("Animacao Tween"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AnimacaoTween(),
              ),
            );
          },
        ),
        ElevatedButton(
          child: const Text("Animacoes Explicitas Construidas"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AnimacoesExplicitasConstruidas(),
              ),
            );
          },
        ),
        ElevatedButton(
          child: const Text("Mais sobre Animacoes"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MaisSobreAnimacoes(),
              ),
            );
          },
        ),
      ],
    );
  }
}
