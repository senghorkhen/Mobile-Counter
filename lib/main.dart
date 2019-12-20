
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:app_counter/counter.dart';
void main() => runApp(Senghor());
class Senghor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("Counter App"),
        ),
        body: Learning(),
      ),
    );
  }
}