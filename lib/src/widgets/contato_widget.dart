import 'package:flutter/material.dart';
class ContatoWidget extends StatelessWidget{
  final String _nome;
  final String _numero;

  ContatoWidget (this._nome, this._numero);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              _nome,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 12.0),
              child: Text(
                _numero,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w200
                ),
              )
            )
          ],
        ),
      )
    );
  }
}