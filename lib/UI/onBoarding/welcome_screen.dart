import 'package:flunace/Consts/colors.dart';
import 'package:flunace/Consts/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';

import 'create_account.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {


  void getLocation()async{
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print(position.longitude);
    print(position.latitude);
  }

  @override
  void initState() {
    getLocation();
    super.initState();
  }

  //var height = MediaQuery.of(context).size.height,

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      // body: Image(
      //   image: AssetImage("assets/images/gmm.jpg", ),
      //   color: kLightOrange,
      // ),
      //
       Container(
        //height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/gmm.jpg", ),
     fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              kLightOrange.withOpacity(0.9),
              BlendMode.darken,
            )
          ),
        ),
         child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
             SizedBox(height: MediaQuery.of(context).size.height - 330 ),
           Center(child: Text("Buy Groceries\nEasily With Us", style:kBoldWhiteTextStyle.copyWith(fontSize: 40.0),)),
           Center(child: Text("Get your groceries in as fast as one hour", style:kSemiBoldWhiteTextStyle.copyWith(color: Colors.white54),)),

             Padding(
               padding:  EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
               child: SizedBox(
                 height: 60.0,
                 child:
                 TextButton(
                   onPressed: () {
                     Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                       return CreateAccount();
                     }));
                   },
                   child:  Text("Get Started", style:kSemiBoldObWhiteTextStyle.copyWith(fontSize: 18.0) ),
                   style: ButtonStyle(
                     shape: MaterialStateProperty.all(
                         RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(15.0),
                         )
                     ),
                     // padding:
                     // MaterialStateProperty.all(EdgeInsets.all(50)),
                     backgroundColor: MaterialStateProperty.all(
                         kMainOrange), // <-- Button color
                     overlayColor:
                     MaterialStateProperty.resolveWith<Color>(
                             (states) {
                           if (states.contains(MaterialState.pressed)){
                             return Colors.white54;// <-- Splash color
                           }
                           return Colors.white54;// <-- Splash color
                         }
                     ),
                   ),
                 ),
               ),
             ),
           ],
         ),
      ),
    );
  }
}
