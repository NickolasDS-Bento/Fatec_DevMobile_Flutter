import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();

  String infoResultado = "Classificação";

  /* Tabela de IMC:
  Abaixo do peso - abaixo de 18,5;
  Peso Normal - 18,5 - 24,9;
  Sobrepeso - 25 - 29,9;
  Obesidade Grau 1 -  30- 34,9;
  Obesidade de Grau 2 - 35 - 39,9;
  Obesidade de Grau 3  - Maior que 40;
  
  */

  void _calcularSoma() {
    setState(() {
      double n1 = double.parse(n1Controller.text);
      double n2 = double.parse(n2Controller.text);

      double imc = (n1 / (n2 * n2));
      if (imc < 18.5) {
        infoResultado = "Abaixo do Peso ideal";
      }
      if (imc > 18.5 && imc < 24.9) {
        infoResultado = "Peso ideal";
      }
      if (imc > 25 && imc < 29.9) {
        infoResultado = "Sobrepeso";
      }
      if (imc > 35 && imc < 39.9) {
        infoResultado = "Obesidade de grau 2";
      }
      if (imc > 40) {
        infoResultado = "Obesidade de Grau 3/Obesidade Morbida";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Colors.white,
      body: _corpo(),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Calculadora de IMC"),
      centerTitle: true,
      backgroundColor: Colors.green,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _foto(),
          _campo("Digite o seu peso", n1Controller),
          _campo("Digite a sua altura", n2Controller),
          _botao(),
          _texto(infoResultado),
        ],
      ),
    );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitulo, labelStyle: TextStyle(color: Colors.green)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.green, fontSize: 25.0),
      controller: objController,
    );
  }

  _botao() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _calcularSoma,
          child: Text("Calcular",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.blue,
        ),
      ),
    );
  }

  _texto(textoParaExibir) {
    return Text(
      textoParaExibir,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.red, fontSize: 25.0),
    );
  }

  _foto() {
    return Center(
      child: Image.network(
        'https://prefonline-savein.cdn.jelastic.net/wp-content/uploads/sites/20/2018/04/Saude.png',
        height: 150,
        width: 150,
      ),
    );
  }
}
