// ignore_for_file: file_names
import 'package:flutter/material.dart';

class BotaoAnimado extends StatefulWidget {
  const BotaoAnimado({Key? key}) : super(key: key);

  @override
  _BotaoAnimadoState createState() => _BotaoAnimadoState();
}

class _BotaoAnimadoState extends State<BotaoAnimado> {
  bool _status = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Botao Animado"),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            _status = !_status;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.linear,
          alignment: Alignment.center,
          width: _status ? 60 : 160,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: AnimatedOpacity(
                  opacity: _status ? 1 : 0,
                  duration: const Duration(seconds: 1),
                  child: const Icon(
                    Icons.person_add,
                    color: Colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: AnimatedOpacity(
                  opacity: _status ? 0 : 1,
                  duration: const Duration(seconds: 1),
                  child: const Text(
                    "Mensagem",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
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
