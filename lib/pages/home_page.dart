import 'package:codepur/widgets/drawer.dart';
import 'package:flutter/material.dart' ;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog App'),
      ),
      body: Center(
        child: Container(
          child: const Text('Welcome to 30 Days of Flutter !!'),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
