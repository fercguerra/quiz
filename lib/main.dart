import 'package:flutter/material.dart';


main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({super.key});


  @override
  Widget build (BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
         body: Text('Olá Flutter'),
      ),
    );
  }
}
   

