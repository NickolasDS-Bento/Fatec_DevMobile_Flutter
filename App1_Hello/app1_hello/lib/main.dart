import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(primaryColor: Colors.black),
      home: metodoHome(),
    );
  }
}

metodoHome() {
  return Scaffold(
    appBar: AppBar(
      title: Text("Nickolas Daniel App"),
      centerTitle: true,
    ),
    body: Container(
      color: Colors.deepPurple,
      child: Center(
          child: Text(
        "Olá! Sou Nickolas Daniel",
        style: TextStyle(fontSize: 50, color: Colors.white),
      )),
    ),
    drawer: Container(
      color: Colors.deepPurple,
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: (() {}),
    ),
  );
}
