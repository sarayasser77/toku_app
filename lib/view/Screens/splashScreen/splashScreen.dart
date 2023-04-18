import 'package:flutter/material.dart';
import 'package:japaneseapp/view/Screens/Homescreen/homescreen.dart';
import 'package:lottie/lottie.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(
          seconds: 4,
        ), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (ctx) =>  HomeScreen()
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.brown.shade100,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('assets/images/categories/testsplash.json',height: MediaQuery.of(context).size.height*.5,),
            ],
          )
      ),
    );
  }
}