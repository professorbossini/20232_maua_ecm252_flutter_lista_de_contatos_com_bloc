import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../models/contato_model.dart';
import '../widgets/contato_widget.dart';

class ContatosWidget extends StatelessWidget{
  String nomeAtual = '';
  String numeroAtual = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget> [
          nomeField(),
          Text('numeroField()'),
          Container(
            margin: EdgeInsets.only(top: 12.0),
            child: Row(
              children: <Widget> [
                Expanded(
                  child: Text('submitButton()')
                )
              ],
            ),
          ),
          Text('contatosList()')
        ],
      )
    );
  }

  Widget nomeField(){
    return StreamBuilder(
      stream: bloc.nome,
      builder: (context, AsyncSnapshot <String> snapshot){
        return TextField(
          onChanged: (valorDigitado){
            bloc.mudarNome(valorDigitado);
            nomeAtual = valorDigitado;    
          },
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            labelText: 'Nome',
            hintText: 'Nome',
            errorText: snapshot.hasError ? '${snapshot.error}' : null
          ),
        );
      },
    );
  }

}