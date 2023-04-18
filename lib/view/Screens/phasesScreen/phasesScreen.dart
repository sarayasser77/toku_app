import 'package:flutter/material.dart';
import 'package:japaneseapp/Animation/fadeAnimation.dart';
import 'package:japaneseapp/model/itemModel.dart';
import 'package:japaneseapp/shared/item.dart';
import 'package:japaneseapp/shared/phrasesitem.dart';
class PhrasesScreen extends StatelessWidget {
  List <Model> phrases=[
    Model('', 'Kodoku suru Koto o wasurenaide kudasai', 'Do not forget to subscribe','dont_forget_to_subscribe.wav'),
    Model('', 'Watashi wa puroguramingu daisukidesu', 'I love programming','i_love_programming.wav'),
    Model('', 'purogramingu wa kantandesu', 'Programming is easy','programming_is_easy.wav'),
    Model('', 'Doko ni iku no', 'Where are you going','where_are_you_going.wav'),
    Model('', 'Namae wa nandesu ka', 'What is your name ?','what_is_your_name.wav'),
    Model('', 'Watashi wa anime ga daisukidesu', 'I love anime','i_love_anime.wav'),
    Model('', 'Go kibun wa ikagadesu ka', 'How are you feeling ?','how_are_you_feeling.wav'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff37306B),title: Text('Phrases'),),
      body: FadeAnimation(1,
        child: ListView.builder(
          itemCount: 7,
          itemBuilder: (BuildContext context, int index) {
            return PhrasesItem(phrases[index], 'phrases', Color(0xff66347F));
              // Item(phrases[index],'phrases',Color(0xff66347F)) ;
          },

        ),
      ),
    );
  }
}