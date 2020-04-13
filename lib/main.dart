import 'package:flutter/material.dart';

void main() {
  runApp(ListaTarefasApp());
}

class ListaTarefasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListaScreen()
    );
  }
}

class ListaScreen extends StatelessWidget {

  Widget getItem() {
      return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.check_box, color: Colors.green),
          iconSize: 42.0,
          onPressed: () { },
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Text("Lavar o carro bem lavado."),
            Text("13/09/2018")
          ]
        )
      ]
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lista de Tarefas"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  getItem(),
                  getItem(),
                  getItem(),
                  getItem(),
                  getItem(),
                  getItem(),
                  getItem(),
                  getItem(),
                  getItem(),
                  getItem(),
                ],
              )
            )
          ],
        )
      );
  }
}
