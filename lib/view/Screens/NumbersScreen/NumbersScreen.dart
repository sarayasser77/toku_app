import 'package:flutter/material.dart';
import 'package:japaneseapp/model/itemModel.dart';
import 'package:japaneseapp/shared/item.dart';

import '../../../Animation/fadeAnimation.dart';
class NumbersScreen extends StatelessWidget {
 List <Model> numbers=[
   Model('assets/images/numbers/number_one.png', 'ichi', 'one','number_one_sound.mp3'),
   Model('assets/images/numbers/number_two.png', 'nei', 'two','number_two_sound.mp3'),
   Model('assets/images/numbers/number_three.png', 'san', 'three','number_three_sound.mp3'),
   Model('assets/images/numbers/number_four.png', 'shi', 'four','number_four_sound.mp3'),
   Model('assets/images/numbers/number_five.png', 'Go', 'five','number_five_sound.mp3'),
   Model('assets/images/numbers/number_six.png', 'roku', 'six','number_six_sound.mp3'),
   Model('assets/images/numbers/number_seven.png', 'sebun', 'seven','number_seven_sound.mp3'),
   Model('assets/images/numbers/number_eight.png', 'hachi', 'eight','number_eight_sound.mp3'),
   Model('assets/images/numbers/number_nine.png', 'kyu', 'nine','number_nine_sound.mp3'),
   Model('assets/images/numbers/number_ten.png', 'ju', 'ten','number_ten_sound.mp3')
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff37306B),title: Text('Numbers'),),
      body: FadeAnimation(1,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return  Item(numbers[index],'numbers',Color(0xffD27685)) ;
          },

        ),
      ),
    );
  }
}
