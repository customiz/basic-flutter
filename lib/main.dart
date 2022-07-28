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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test APP อิอิ'),
        ),
        body: Center(
            child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              "ทดสอบๆๆๆๆ",
              style: TextStyle(fontSize: 50, color: Colors.red),
            ),
            Text("HI HELLO TEST"),
            Image(
                image: NetworkImage(
                    'https://farmhip.com/media/illustration/work-01.png'))
          ],
        )),
      ),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}
