import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _switchDia = false;
  bool _switchTamanho = false;
  double tamanhoFonte = 15;
  var corFundo = Colors.black38;
  var corTexto = Colors.black38;

  _salvar() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool("dia", _switchDia);
    await prefs.setBool("tamanho", _switchTamanho);

    print(
        "Salvo! Dia: $_switchDia.toString(), Tamanho: $_switchTamanho.ToString()");
  }

  _recuperar() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      _switchDia = prefs.getBool("dia")!;
      _switchTamanho = prefs.getBool("tamanho")!;
    });

    print(
        "Método Recuperar Dia: $_switchDia.toString(), Tamanho: $_switchTamanho.ToString()");
  }

  _remover() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.remove("nome");

    print("Método Remover");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App_14 - Frases"),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[
              Text('Noite'),
              _botaoSwitchDia(),
              Text('Grande'),
              _botaoSwitchTamanho()
            ]),
            Row(children: <Widget>[
              Flexible(
                  child: SingleChildScrollView(
                      child: Text(
                "meu odio é um veneno que eu tomo querendo que o outro morra...",
                style: TextStyle(
                    fontSize: tamanhoFonte,
                    backgroundColor: corFundo,
                    color: corTexto),
              )))
            ])
          ],
        ),
      ),
    );
  }

  _botaoSwitchDia() {
    return Switch(
      value: _switchDia,
      onChanged: (value) {
        setState(() {
          _switchDia = value;
          if (value == false) {
            corFundo = Colors.white;
            corTexto = Colors.black;
          } else {
            corFundo = Colors.black;
            corTexto = Colors.white;
          }
        });
      },
    );
  }

  _botaoSwitchTamanho() {
    return Switch(
      value: _switchTamanho,
      onChanged: (value) {
        setState(() {
          _switchTamanho = value;
          if (value == false) {
            tamanhoFonte = 15.0;
          } else {
            tamanhoFonte = 25.0;
          }
        });
      },
    );
  }
}
