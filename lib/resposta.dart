import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                Colors.blue), // Cor de fundo quando o botão está no estado padrão
            foregroundColor: MaterialStateProperty.all<Color>(
                Colors.white), // Cor do texto do botão
          ),
          onPressed: quandoSelecionado,
          child: Text(texto),
        ),
      ),
    );
  }
}
