import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../Consts/colors.dart';
import '../../Consts/text_styles.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({Key? key}) : super(key: key);

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  static const _initialCamPos = CameraPosition(target: LatLng(37.773972, -122.431297),
    zoom: 11.5,
  );
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children:[ GoogleMap(
          initialCameraPosition: _initialCamPos,
        ),
          SafeArea(
            child:
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 50.0.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50.0.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13.0.r)
                    ),
                    child:
                    Center(child:
                    TextFormField(
                      // inputFormatters: [
                      //   LengthLimitingTextInputFormatter(1)
                      // ],
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 40.0),
                        hintText: "Search for a location",
                        border: InputBorder.none,
                        hintStyle:GoogleFonts.inter(color: Colors.black54,),
                      ),
                      keyboardType: TextInputType.text,
                      style: GoogleFonts.inter(color: Colors.black,),
                      onChanged: (value){
                      },

                    )
                    ),
                  ),
                  SizedBox(
                    height: 60.0,
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                        //   return const GoogleMapScreen();
                        // }));
                      },
                      child:  Text("Pick Location", style:kSemiBoldObWhiteTextStyle.copyWith(fontSize: 18.0) ),
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
                ],
              ),
            ),
          )
      ]
      ),
    );
  }
}
