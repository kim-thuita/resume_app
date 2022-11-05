import 'package:flutter/material.dart';
import 'portfolio.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'portfolio',
      routes: {'portfolio': (context) => Portfolio()}));
}
