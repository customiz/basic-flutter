// ignore_for_file: prefer_const_constructors
import 'package:basicflutter/MoneyBox.dart';
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
      theme: ThemeData(primarySwatch: Colors.purple),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('บัญชีของฉัน',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MoneyBox("ยอดเงินคงเหลือ", 10000, Colors.lightBlue, 120),
              SizedBox(
                height: 5,
              ),
              MoneyBox("รายรับ", 15000, Colors.green, 100),
              SizedBox(
                height: 5,
              ),
              MoneyBox("รายจ่าย", 3000, Colors.red, 100),
              SizedBox(
                height: 5,
              ),
              MoneyBox("ค้างชำระ", 1200, Colors.orange, 100),
            ],
          ),
        ));
  }
}
