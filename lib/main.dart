import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    'Quem não é visto não é lembrado!',
    'Teste é para quem não se garante!',
    'Todo dia chove, só não sei onde!',
    'Eu sou o melhor dessa mesa!',
    'Falou comigo?',
    'Hummmmmmm',
    'Nunca nem ví!',
    'AAIIINNNNNN'
  ];

  var _fraseGerada = 'Clique abaixo para gerar uma frase!';

  void _gerarFrase() {
    var numeroSorteao = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteao];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases do dia'),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/logo.png'),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.black),
            ),
            RaisedButton(
              child: Text(
                'Nova Frase',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              color: Colors.green,
              onPressed: _gerarFrase,
            )
          ],
        ),
      )),
    );
  }
}
