import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String De = 'De';
  String Para = 'Para';
  String Resposta = "";
  double resultado = 0;

  double v1 = 0;
  double v2 = 0;

  TextEditingController n1Controller = TextEditingController();

  void _ExibirTexto() {
    v1 = double.parse(n1Controller.text);

   TextEditingController cepController = TextEditingController();
  String info_endereco = '';

  _recuperarCep() async {
    String url = 'https://viacep.com.br/ws/${cepController.text}/json/';

    print(url);

    http.Response response = await http.get(Uri.parse(url));
    Map<String, dynamic> retorno = json.decode(response.body);
    String cep = retorno["cep"];
    String logradouro = retorno["logradouro"];
    String bairro = retorno["bairro"];
    String localidade = retorno["localidade"];
    String uf = retorno["uf"];

    setState(() {
      info_endereco =
          'Cep:$cep \n Logradouro: $logradouro \n Bairro: $bairro \n Cidade: $localidade \n Estado: $uf';
    });
    
      var resultFormat = resultado.toStringAsFixed(2);

      if (Para == 'Reais') {
        Resposta = "O resultado da conversão é\n R\$ $resultFormat";
      } else if (Para == 'Dólar') {
        Resposta = "O resultado da conversão é\n US\$ $resultFormat";
      } else if (Para == 'Euros') {
        Resposta = "O resultado da conversão é\n € $resultFormat";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Color.fromARGB(255, 223, 222, 222),
      body: _corpo(),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("CONVERSOR DE MOEDAS", style: TextStyle(color: Colors.black)),
      centerTitle: true,
      backgroundColor: Colors.redAccent,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          //_imagem(),
          _texto(),
          _campo("Valor:", n1Controller),
          _dropdownDe(),
          _dropdownPara(),
          _botao(),
          _Resposta(Resposta),
        ],
      ),
    );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitulo, labelStyle: TextStyle(color: Colors.black)),
      textAlign: TextAlign.left,
      style: TextStyle(color: Colors.black, fontSize: 22.0),
      controller: objController,
    );
  }

  _dropdownDe() {
    return DropdownButton<String>(
      value: De,
      items: <String>['De', 'Dólar', 'Reais', 'Euros'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? valorSelecionado) {
        setState(() {
          De = valorSelecionado!;
        });
      },
    );
  }

  _dropdownPara() {
    return DropdownButton<String>(
      value: Para,
      items: <String>['Para', 'Dólar', 'Reais', 'Euros'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? valorSelecionado) {
        setState(() {
          Para = valorSelecionado!;
        });
      },
    );
  }

  _botao() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _ExibirTexto,
          child: Text("CONVERTER",
              style: TextStyle(color: Colors.black, fontSize: 20.0)),
          color: Colors.redAccent,
        ),
      ),
    );
  }

  _texto() {
    return Text(
      "\nConversor de Moedas\n"
      "Dolar, Real e Euro\n",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  _Resposta(Resposta) {
    return Text(
      Resposta,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, fontSize: 20.0),
    );
  }
}
