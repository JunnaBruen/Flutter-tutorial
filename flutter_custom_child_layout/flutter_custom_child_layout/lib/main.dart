import 'package:flutter/material.dart';
// import 'package:flutter_custom_single/custom_single_child_layout.dart';
// import 'package:flutter_custom_single/custom_multi_child_layout.dart';
import 'package:flutter_custom_single/custom_multi_child_layout_second.dart';

void main() {
  runApp(const Custom());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Custom(),
    );
  }
}
