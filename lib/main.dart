// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'FoodMenu.dart';

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
  List<FoodMenu> menu = [
    FoodMenu("กระเพรา", "50", "assets/images/1.jpg"),
    FoodMenu("คะน้า", "55", "assets/images/2.jpg"),
    FoodMenu("ส้มตำ", "45", "assets/images/3.jpg"),
    FoodMenu("ผัดไทย", "50", "assets/images/4.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('เลือกเมนู'),
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              FoodMenu food = menu[index];
              return ListTile(
                leading: Image.asset(food.img),
                title: Text(food.name),
                // ignore: prefer_interpolation_to_compose_strings
                subtitle: Text("ราคา " + food.price + " บาท"),
                onTap: () {
                  print("เลือกเมนูชื่อ " + food.name);
                },
              );
            }));
  }
}
