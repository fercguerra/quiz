import 'package:flutter/material.dart';
import './questao.dart';
import 'resposta.dart';

void main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
   final List<Map<String, Object>> _perguntas = const [
      //Map é uma coleção de elementos onde cada elemento é um par chave-valor. A chave e o valor podem ser de qualquer tipo, e cada chave em um Map deve ser única.
      {
        'texto': 'Qual sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
      },
      {
        'texto': 'Qual o seu animal favorito?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
      },
      {
        'texto': 'Qual o seu instrutor favorito?',
        'respostas': ['Maria', 'João', 'Leo', 'Pedro'],
      }
    ];

  void _responder() {
    if(temPerguntaSelecionada) {
      setState(() {
      _perguntaSelecionada++;
    });
    }
    
    
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
   
    
    List<String> respostas = temPerguntaSelecionada ? _perguntas[_perguntaSelecionada].cast()['respostas']:[];
    List <Widget> widgets = respostas.map((t) => Resposta(t, _responder)).toList();

    


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionada? Column(
          children: [
            Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),
            ...respostas.map((t) => Resposta(t, _responder)).toList(),
            //pergou as resposas, usou um map para converter a lista de string e lista de widgtes
          ],
        ): null,
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
