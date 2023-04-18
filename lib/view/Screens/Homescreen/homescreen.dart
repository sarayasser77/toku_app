import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:japaneseapp/Animation/fadeAnimation.dart';
import 'package:japaneseapp/view/Screens/FamilyScreen/familyScreen.dart';
import 'package:japaneseapp/view/Screens/NumbersScreen/NumbersScreen.dart';
import 'package:japaneseapp/view/Screens/colorScreen/colorScreen.dart';
import 'package:japaneseapp/view/Screens/phasesScreen/phasesScreen.dart';
class HomeScreen extends StatelessWidget {
// List <String> images=[
//   'assets/images/categories/colors.png',
//   'assets/images/categories/members.jpeg',
//   'assets/images/categories/numbers.png',
// ];
List <Color> colorscategories=[
  Color(0xffD27685),
Color(0xff9E4784),
  Color(0xff66347F),
  Color(0xff37306B)
];
List <String>categoriesName=[
  'Numbers',
  'Family Members',
  'Colors',
  'Phases'
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff37306B),title: Text('Toku'),),
      backgroundColor: Colors.brown.shade50,
              body: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/categories/background.jpg')
                  )
                ),
               padding: EdgeInsets.symmetric(vertical: 30),
                   height: double.infinity,
                child:   FadeAnimation(2,
                  child: ListView.builder(
      itemCount: 4,
      itemBuilder: (context,index){

    return GestureDetector(
      onTap: (){
        index==0?Navigator.push(context, MaterialPageRoute(builder: (context)=>NumbersScreen()))
            :index==1?Navigator.push(context, MaterialPageRoute(builder: (context)=>FamilyScreen()))
            :index==2?Navigator.push(context, MaterialPageRoute(builder: (context)=>ColorScreen()))
            :Navigator.push(context, MaterialPageRoute(builder: (context)=>PhrasesScreen()));
      },
      child: Container(
        alignment: Alignment.center,
        height: 100,
        margin: EdgeInsets.all(8),
decoration: BoxDecoration(
  color:colorscategories[index],
  borderRadius: BorderRadius.circular(20)
),
        child: Text(categoriesName[index],style: TextStyle(color: Colors.white,fontSize: 25),),
      ),
    );

  }),
                ),

),



      // body: MasonryGridView.builder(gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
      //   crossAxisCount: 3
      // ), itemBuilder: (context,index){
      //   return Padding(
      //       padding:EdgeInsets.all(8) ,
      //   child: Image.asset('assets/images/colors/color_black.png'),
      //   );
      // }
      // ),
    );
  }
}
