import 'package:codepur/home_page.dart';
import 'package:flutter/material.dart' ;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const int days = 30;

    return  const MaterialApp(
      home: HomePage(),
    );
  }
}
