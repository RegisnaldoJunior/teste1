import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Teste 1',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text(
          'Olá Mundo!',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
