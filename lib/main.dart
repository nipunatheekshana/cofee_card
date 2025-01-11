import 'package:coffee_card/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: const Home()
  ));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
        backgroundColor: Colors.grey,
      ),
      body: Row(
        children: [
          Container(
            height: 100,
            color: Colors.green,
            child: Text('one'),
          ),
          Container(
            height: 200,
            color: Colors.red,
            child: Text('one'),
          ),
          Container(
            height: 300,
            color: Colors.blue,
            child: Text('one'),
          ),

        ],
      )
    );
  }
}