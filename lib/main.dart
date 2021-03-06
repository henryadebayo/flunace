import 'package:flunace/Consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'UI/onBoarding/welcome_screen.dart';
import 'UI/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
      ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context,child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryTextTheme: TextTheme(
              button:  GoogleFonts.inter(color: Colors.white),
            ),
            appBarTheme: AppBarTheme(
              titleTextStyle: GoogleFonts.inter(color: kMainOrange, fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            primarySwatch: Colors.orange,
          ),
          home: const  WelcomeScreen(),
        ),
        designSize: const Size(360, 690),
      );
  }
}
