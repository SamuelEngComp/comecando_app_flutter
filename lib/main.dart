
import 'package:flutter/material.dart';
import 'immutable_widget.dart';
import 'tela_basica.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaBasica(),
    );
  }
}


