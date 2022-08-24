import 'package:flunace/Consts/colors.dart';
import 'package:flunace/Consts/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 10.0.w, right: 10.0.w, top: 30.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.view_headline,
                        size: 40.0,
                      )),
                  Text(
                    "Dutse, Jigawa",
                    style: kBoldWhiteTextStyle.copyWith(
                        color: Colors.black, fontSize: 15.0),
                  ),
                  Container(
                    height: 45.0,
                    width: 45.0,
                    // color: Colors.black,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadiusDirectional.circular(10.0)),
                    child: Center(
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications,
                            color: kMainOrange,
                          )),
                    ),
                  )
                ],
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 20.0.h, left: 12.0.w, bottom: 20.0.h),
                child: Text(
                  "Lets Explore\nNew Places Together 🤗",
                  style: kBoldWhiteTextStyle.copyWith(
                      color: Colors.black, fontSize: 20.0),
                ),
              ),
              Container(height: 150.0.h, color: Colors.grey[200]),
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 12.0.w),
                child: Text(
                  "Online Store",
                  style: kBoldWhiteTextStyle.copyWith(color: Colors.black),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 50,
                    itemBuilder: (ctx, int index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 8.0.h),
                        child: Container(
                          height: 79.0.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0.r),
                            color: const Color(0xffF2F3F2),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 30.0.h, left: 24.0.w),
                            child: Text(
                              "Groceries Stores",
                              style: kSemiBoldWhiteTextStyle.copyWith(
                                fontSize: 14.0.sp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnlineStoreCard extends StatelessWidget {
  const OnlineStoreCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.0.h),
      child: Container(
        height: 115.0.h,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: const AssetImage("assets/images/store.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5),
                BlendMode.darken,
              )),
          borderRadius: BorderRadius.circular(10.0.r),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 40.0.w, top: 60.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sahad Stores",
                style: kBoldWhiteTextStyle.copyWith(fontSize: 20.0),
              ),
              Wrap(
                children: [
                  const Icon(
                    Icons.directions_walk,
                    color: Colors.white,
                  ),
                  Text(
                    "5Km",
                    style: kBoldWhiteTextStyle,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
