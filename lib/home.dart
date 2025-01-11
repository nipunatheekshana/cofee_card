import 'package:coffee_card/cofee_prefs.dart';
import 'package:coffee_card/components/styled_body_text.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coffee Card',style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
          )),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.brown[200],
            padding: const EdgeInsets.all(20.0),
            child: const StyledBodyTexr('How i like my coffee ...' ),
          ),
           Container(
            color: Colors.brown[100],
            padding: const EdgeInsets.all(20.0),
            child: const CofeePrefs(),
          ),
          Expanded(
            child: Image.asset('assets/img/coffee_bg.jpg',
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
            )
          ),
        ],
      ),
    );
  }
}