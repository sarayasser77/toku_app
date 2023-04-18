import 'package:flutter/material.dart';
import 'package:japaneseapp/Animation/fadeAnimation.dart';
import 'package:japaneseapp/model/itemModel.dart';
import 'package:japaneseapp/shared/item.dart';
class ColorScreen extends StatelessWidget {
  List <Model> colors=[
    Model('assets/images/colors/color_black.png', 'Burakku', 'black','black.wav'),
    Model('assets/images/colors/color_brown.png', 'Chairo', 'brown','brown.wav'),
    Model('assets/images/colors/color_dusty_yellow.png', 'Hokori ppoi kiiro', 'dusty yellow','dusty yellow.wav'),
    Model('assets/images/colors/color_gray.png', 'Gure', 'grey','gray.wav'),
    Model('assets/images/colors/color_green.png', 'Midori', 'green','green.wav'),
    Model('assets/images/colors/color_red.png', 'Aka', 'red','red.wav'),
    Model('assets/images/colors/color_white.png', 'Shiroi', 'white','white.wav'),
    Model('assets/images/colors/yellow.png', 'Kiru', 'yellow','yellow.wav'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff37306B),title: Text('Colors'),),
      body: FadeAnimation(1,
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) {
            return  Item(colors[index],'colors',Color(0xff66347F)) ;
          },

        ),
      ),
    );
  }
}