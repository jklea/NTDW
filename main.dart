import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BolaPage(),
        debugShowCheckedModeBanner: false,
      ),
);

class BolaPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Pergunte-me Qualquer coisa!'),
            backgroundColor: Colors.blue.shade900,
          ),
          body: Bola(),
      );
  }
}

class Bola extends StatefulWidget {
  @override
  _BolaState createState() => _BolaState();
}

class _BolaState extends State<Bola> {
  int nrBola = 1;

  void rolarDados(){
    setState(() {
      nrBola = Random().nextInt(4)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: (){
            rolarDados();
        },
        child: Image.asset('Images/valor$nrBola.png'),
      ),
      
      
    ); 
  }
}