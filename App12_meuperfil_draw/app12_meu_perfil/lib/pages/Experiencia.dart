import 'package:flutter/material.dart';

class Experiencia extends StatelessWidget {
  const Experiencia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Experiência'),
      ),
      body: Text(
          'Aqui a pessoa cadastra suas experiências profissionais anteriores.'),
    );
  }
}
