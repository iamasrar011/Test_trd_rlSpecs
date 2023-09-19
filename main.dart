import 'package:flutter/material.dart';

void main() {
  runApp(AlgorithmicTradingApp());
}

class AlgorithmicTradingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Algorithmic Trading',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
