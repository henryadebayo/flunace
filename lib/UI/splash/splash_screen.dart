import 'package:flunace/Consts/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:kMainOrange,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Text("Flunace",style:TextStyle(fontSize: 48.0, fontWeight: FontWeight.w500, color: Colors.white),),
        ),
      ),
    );
  }
}
