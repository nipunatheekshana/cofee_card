import 'package:coffee_card/components/styled_body_text.dart';
import 'package:coffee_card/components/styled_button.dart';
import 'package:flutter/material.dart';

class CofeePrefs extends StatefulWidget {
  const CofeePrefs({super.key});

  @override
  State<CofeePrefs> createState() => _CofeePrefsState();
}

class _CofeePrefsState extends State<CofeePrefs> {

  int strength = 1;
  int sugars = 1;

  void increeseStrenth(){
    setState(() {
      strength = strength < 5 ? strength +  1 : 1;
    });
  }

  void increeseSugar(){
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const StyledBodyTexr('Strength: '),
            for(int i=0; i<strength;i++)
              Image.asset('assets/img/coffee_bean.png',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child:  SizedBox()),
            StyledButton(
              onPressed: increeseStrenth,
              child: const Text('+')
            )
          ],
        ),
        Row(
          children: [
            const StyledBodyTexr('Sugars: '),
            if(sugars == 0) 
              const StyledBodyTexr('No sugar added'),
            for(int i=0; i<sugars;i++)
              Image.asset('assets/img/sugar_cube.png',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child:  SizedBox()),
            StyledButton(
              onPressed: increeseSugar,
              child: const Text('+')
            )
          
          ],
        )
      ],
    );
  }
}