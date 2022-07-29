// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  var app = Myapp();
  runApp(app);
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test App',
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('เลือกเมนู'),
        ),
        body: ListView.builder(
            itemCount: 50,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(title: Text("เมนูที่ ${index + 1}"));
            }));
  }
}
