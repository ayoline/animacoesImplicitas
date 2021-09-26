// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CriandoAnimacoesBasicas extends StatefulWidget {
  const CriandoAnimacoesBasicas({Key? key}) : super(key: key);

  @override
  _CriandoAnimacoesBasicasState createState() =>
      _CriandoAnimacoesBasicasState();
}

class _CriandoAnimacoesBasicasState extends State<CriandoAnimacoesBasicas> {
  bool _status = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Meu App"),
      ),
      /*
      body: AnimatedContainer(
        duration: const Duration(seconds: 1),
        color: Colors.green,
        padding: const EdgeInsets.all(10),
        height: _status ? 0 : 100,
      ),
      */

      body: AnimatedContainer(
        duration: const Duration(seconds: 1),
        color: Colors.green,
        padding: const EdgeInsets.only(bottom: 100, top: 20),
        alignment: _status ? Alignment.bottomCenter : Alignment.topCenter,
        child: AnimatedOpacity(
          opacity: _status ? 1 : 0,
          duration: const Duration(seconds: 1),
          child: Container(
            height: 50,
            child: const Icon(
              Icons.airplanemode_active,
              size: 50,
              color: Colors.white,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        elevation: 6,
        child: const Icon(Icons.add_box),
        onPressed: () {
          setState(() {
            _status = !_status;
          });
        },
      ),
    );
  }
}
