import 'package:flutter/material.dart';
import 'layout.dart';

void main() {
  runApp(const Layout());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(body: Layout()),
    );
  }
}
