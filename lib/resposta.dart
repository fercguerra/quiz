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
        padding: const EdgeInsets.all(12.0),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Colors.purple), // Cor de fundo quando o botão está no estado padrão
          foregroundColor: MaterialStateProperty.all<Color>(
              Colors.white), // Cor do texto do botão
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0), // Ajuste o valor conforme necessário
              // Se desejar, você também pode adicionar bordas diferentes para o botão
              // side: BorderSide(color: Colors.purple, width: 2),
            ),
          ),
        ),
          onPressed: quandoSelecionado,
          child: Text(texto),
        ),
      ),
    );
  }
}
