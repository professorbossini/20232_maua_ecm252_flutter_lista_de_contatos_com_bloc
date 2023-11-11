import 'package:flutter/material.dart';
// import 'widgets/contato_widget.dart';
import 'widgets/contatos_widget.dart';
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contatos',
      theme: ThemeData(
        primarySwatch: Colors.blue 
      ),
      home: Scaffold(
        body: ContatosWidget(),
      ),
    );
  }
}