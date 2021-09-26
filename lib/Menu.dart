// ignore_for_file: file_names
import 'package:animacoes/AnimacaoImplicita.dart';
import 'package:animacoes/BotaoAnimado.dart';
import 'package:animacoes/CriandoAnimacoesBasicas.dart';
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AnimacaoImplicita(),
              ),
            );
          },
          child: const Text("Animacao Implícita"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CriandoAnimacoesBasicas(),
              ),
            );
          },
          child: const Text("Animacoes Basicas"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BotaoAnimado(),
              ),
            );
          },
          child: const Text("Botao Animado"),
        ),
      ],
    );
  }
}
