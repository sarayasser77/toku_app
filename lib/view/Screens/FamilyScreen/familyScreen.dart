import 'package:flutter/material.dart';
import 'package:japaneseapp/Animation/fadeAnimation.dart';
import 'package:japaneseapp/model/itemModel.dart';
import 'package:japaneseapp/shared/item.dart';
class FamilyScreen extends StatelessWidget {
  List <Model> family=[
    Model('assets/images/family_members/family_father.png', 'chichioya', 'father','father.wav'),
    Model('assets/images/family_members/family_mother.png', 'hahaoya', 'mother','mother.wav'),
    Model('assets/images/family_members/family_son.png', 'mosku', 'son','son.wav'),
    Model('assets/images/family_members/family_grandfather.png', 'ojisan', 'GrandFather','grand father.wav'),
    Model('assets/images/family_members/family_grandmother.png', 'sobo', 'GrandMother','grand mother.wav'),
    Model('assets/images/family_members/family_older_brother.png', 'Nisan', 'OlderBrother','older bother.wav'),
    Model('assets/images/family_members/family_older_sister.png', 'Ane', 'OlderSister','older sister.wav'),
    Model('assets/images/family_members/family_younger_brother.png', 'ototu', 'YoungerBrother','younger brohter.wav'),
    Model('assets/images/family_members/family_younger_sister.png', 'emotu', 'YoungerBrother','younger sister.wav'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff37306B),title: Text('Family members'),),
      body: FadeAnimation(1,
        child: ListView.builder(
          itemCount: 9,
          itemBuilder: (BuildContext context, int index) {
            return  Item(family[index],'family_members',Color(0xff9E4784)) ;
          },

        ),
      ),
    );
  }
}