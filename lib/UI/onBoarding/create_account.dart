import 'package:flunace/Consts/colors.dart';
import 'package:flunace/Consts/text_styles.dart';
import 'package:flunace/UI/onBoarding/verify_number_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';




class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      body: 
      SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0.h),
          child: Column(
            children:[
              SizedBox(height: 20.0.h),
              Center(child: Text("Create An Account", style: kBoldWhiteTextStyle.copyWith(color: Colors.black, fontSize: 20.0),)),
              SizedBox(height: 20.0.h),
              Center(child: Text("Enter Your Phone Number to receive\nverification code",textAlign: TextAlign.center, style: kSemiBoldWhiteTextStyle.copyWith(color: Colors.black,),)),
              SizedBox(height: 80.0.h),
              Container(
                height: 50.0.h,
                width: MediaQuery.of(context).size.width - 50,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(13.0.r)
                ),
                child: Center(child:
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    border: InputBorder.none,
                    fillColor: Colors.transparent,
                    hintText: "+234  7012345678",
                    contentPadding: EdgeInsets.only(left: 50.0.w),
                    hintStyle: GoogleFonts.inter(color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                  keyboardType: TextInputType.number,
                  style: GoogleFonts.inter(color: Colors.black, fontWeight: FontWeight.bold),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value){
                  },
                  //maxLength: 10,
                )
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 20.0, right: 20.0, top: 90.0),
                child: SizedBox(
                  height: 60.0,
                  width: double.infinity,
                  child:
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                        return VerifyNumber();
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
