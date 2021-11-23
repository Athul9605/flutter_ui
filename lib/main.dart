import 'package:flutter/material.dart';
import 'package:flutter_ui/uilogin.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.indigo), home: Assign());
  }
}