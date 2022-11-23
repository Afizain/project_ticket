//@dart=2.9
import 'package:flutter/material.dart';
import 'package:project_tiket/screen/dashboard.dart';
import 'package:project_tiket/screen/login.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login(),
    );
  }
}
