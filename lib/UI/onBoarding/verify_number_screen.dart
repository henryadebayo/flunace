import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Consts/colors.dart';
import '../../Consts/text_styles.dart';
import '../gMap/google_map_screen.dart';


class VerifyNumber extends StatefulWidget {
  const VerifyNumber({Key? key}) : super(key: key);

  @override
  State<VerifyNumber> createState() => _VerifyNumberState();
}

class _VerifyNumberState extends State<VerifyNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0.h),
          child: Column(
              children:[
                SizedBox(height: 20.0.h),
                Center(child: Text("Verify Phone Number", style: kBoldWhiteTextStyle.copyWith(color: Colors.black, fontSize: 20.0),)),
                SizedBox(height: 20.0.h),
                Center(child: Text("Enter the code from the sms sent to you at\n+2348186746590",textAlign: TextAlign.center, style: kSemiBoldWhiteTextStyle.copyWith(color: Colors.black,),)),
                SizedBox(height: 80.0.h),

                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   // crossAxisAlignment: CrossAxisAlignment.,
                    children: [
                      Container(
                        height: 70.0.h,
                        width: 70.0.w,
                        decoration: BoxDecoration(
                            color: kLightOrange,
                            borderRadius: BorderRadius.circular(13.0.r)
                        ),
                        child:
                        Center(child:
                        TextFormField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1)
                          ],
                          decoration: InputDecoration(
                            hintText: "0",
                            border: InputBorder.none,
                            hintStyle:GoogleFonts.inter(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 50.0),
                          ),
                          keyboardType: TextInputType.number,
                          style: GoogleFonts.inter(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30.0), textAlign: TextAlign.center,
                          onChanged: (value){
                            if (value.length == 1){
                              FocusScope.of(context).nextFocus();
                            }
                          },

                        )
                        ),
                      ),
                      Container(
                        height: 70.0.h,
                        width: 70.0.w,
                        decoration: BoxDecoration(
                            color: kLightOrange,
                            borderRadius: BorderRadius.circular(13.0.r)
                        ),
                        child:
                        Center(child:
                        TextFormField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1)
                          ],
                          decoration: InputDecoration(
                            hintText: "0",
                            border: InputBorder.none,
                            hintStyle:GoogleFonts.inter(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 50.0),
                          ),
                          keyboardType: TextInputType.number,
                          style: GoogleFonts.inter(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30.0), textAlign: TextAlign.center,
                          onChanged: (value){
                            if (value.length == 1){
                              FocusScope.of(context).nextFocus();
                            }
                          },

                        )
                        ),
                      ),
                      Container(
                        height: 70.0.h,
                        width: 70.0.w,
                        decoration: BoxDecoration(
                            color: kLightOrange,
                            borderRadius: BorderRadius.circular(13.0.r)
                        ),
                        child:
                        Center(child:
                        TextFormField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1)
                          ],
                          decoration: InputDecoration(
                            hintText: "0",
                            border: InputBorder.none,
                            hintStyle:GoogleFonts.inter(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 50.0),
                          ),
                          keyboardType: TextInputType.number,
                          style: GoogleFonts.inter(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30.0), textAlign: TextAlign.center,
                          onChanged: (value){
                            if (value.length == 1){
                              FocusScope.of(context).nextFocus();
                            }
                          },

                        )
                        ),
                      ),
                      Container(
                        height: 70.0.h,
                        width: 70.0.w,
                        decoration: BoxDecoration(
                            color: kLightOrange,
                            borderRadius: BorderRadius.circular(13.0.r)
                        ),
                        child:
                        Center(child:
                        TextFormField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1)
                          ],
                          decoration: InputDecoration(
                            hintText: "0",
                            border: InputBorder.none,
                            hintStyle:GoogleFonts.inter(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 50.0),
                          ),
                          keyboardType: TextInputType.number,
                          style: GoogleFonts.inter(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30.0), textAlign: TextAlign.center,
                          onChanged: (value){
                            if (value.length == 1){
                              FocusScope.of(context).nextFocus();
                            }
                          },

                        )
                        ),
                      ),
                    ],
                  ),
                ),
                //AIzaSyCqv2b8vhxvSkqzaWLLhbVLF0IZ0p-Nzuw
                Padding(
                  padding:  EdgeInsets.only(left: 20.0, right: 20.0, top: 90.0),
                  child: SizedBox(
                    height: 60.0,
                    width: double.infinity,
                    child:
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                          return const GoogleMapScreen();
                        }));
                      },
                      child:  Text("Next", style:kSemiBoldObWhiteTextStyle.copyWith(fontSize: 18.0) ),
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
              ]
          ),
        ),
      ),
    );
  }
}
