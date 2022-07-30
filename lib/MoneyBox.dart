// ignore_for_file: prefer_const_constructors, must_be_immutable, file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MoneyBox extends StatelessWidget {
  String title;
  double amount;
  Color color;
  double size;
  MoneyBox(this.title, this.amount, this.color, this.size);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      height: size,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(
              // ignore: unnecessary_string_interpolations
              '${NumberFormat("#,###.##").format(amount)}',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ),
          )
        ],
      ),
    );
  }
}
