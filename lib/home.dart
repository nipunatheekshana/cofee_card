import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coffee Card'),
        backgroundColor: Colors.brown,
        centerTitle: true,
      ),
      body: const Text('hello world'),
    );
  }
}