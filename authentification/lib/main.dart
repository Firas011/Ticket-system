import 'dart:html';

import 'package:authentification/welcome.dart';
import 'package:flutter/material.dart';
import 'welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: welcome(),
    );
  }
}
