import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Center(child: AlertWithIcon())));
  }
}

class AlertWithIcon extends StatefulWidget {
  AlertWithIconWidget createState() => AlertWithIconWidget();
}

class AlertWithIconWidget extends State {
  showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(children: [
            Image.asset(
              'lib/imagem.png',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
          ]),
          content: Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Text("Ops!",
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(
                  children: [
                    Text("E-mail ou senha inválidos",
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(
                  children: [
                    Text("Tente novamente",
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () => showAlert(context),
          child: Text('Clique aqui para exibir o diálogo'),
          textColor: Colors.white,
          color: Colors.blueAccent,
          padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
        ),
      ),
    );
  }
}
