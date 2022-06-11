import 'package:flutter/material.dart';
import 'Sobre.dart';
import 'Formacao.dart';
import 'Experiencia.dart';
import 'Pessoal.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;

  final telas = [
    Center(child: Text('Tela Home')),
    Experiencia(),
    Pessoal(),
    Formacao(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: _titulo(),
            backgroundColor: Colors.white,
            body: telas[_currentPage],
            drawer: Drawer(
                child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text('Nickolas Daniel'),
                  accountEmail: Text('nickolas_daniel@hotmail.com'),
                  currentAccountPicture: CircleAvatar(
                    //backgroundImage: AssetImage('assets/images/rock2.jpg'),
                    backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/60940818?v=4'),
                  ),
                ),
                ListTile(
                  //leading: Icon(Icons.star),
                  title: Text('Home'),
                  subtitle: Text('Tela inicial do App'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    setState(() {
                      _currentPage = 0;
                    });
                  },
                ),
                ListTile(
                  //leading: Icon(Icons.star),
                  title: Text('Experiencia'),
                  subtitle:
                      Text('Esta pagina lista suas experiências profissionais'),
                  trailing: Icon(Icons.work),
                  onTap: () {
                    setState(() {
                      _currentPage = 1;
                    });
                  },
                ),
                ListTile(
                  //leading: Icon(Icons.star),
                  title: Text('Pessoal'),
                  subtitle:
                      Text('Esta pagina armazena suas informações pessoais'),
                  trailing: Icon(Icons.person),
                  onTap: () {
                    setState(() {
                      _currentPage = 2;
                    });
                  },
                ),
                ListTile(
                  //leading: Icon(Icons.star),
                  title: Text('Formação'),
                  subtitle:
                      Text('Esta pagina apresenta a sua formação academica'),
                  trailing: Icon(Icons.history_edu),
                  onTap: () {
                    setState(() {
                      _currentPage = 3;
                    });
                  },
                ),
              ],
            ))));
  }

  _titulo() {
    return AppBar(
      title: Text("Rede social"),
      centerTitle: true,
      backgroundColor: Colors.green,
    );
  }
}
