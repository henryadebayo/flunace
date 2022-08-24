import 'package:flunace/Consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Consts/text_styles.dart';

class StoreCategoryPage extends StatefulWidget {
  const StoreCategoryPage({Key? key}) : super(key: key);

  @override
  State<StoreCategoryPage> createState() => _StoreCategoryPageState();
}

class _StoreCategoryPageState extends State<StoreCategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: 10.0.w, right: 10.0.w, top: 10.0.h),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 45.0,
                  width: 45.0,
                  // color: Colors.black,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadiusDirectional.circular(10.0)),
                  child: Center(
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        )),
                  ),
                ),
                SizedBox(
                  width: 8.0.w,
                ),
                Text(
                  "Groceries, Stores",
                  style: kBoldWhiteTextStyle.copyWith(
                      color: Colors.black, fontSize: 15.0),
                ),
              ],
            ),
            SizedBox(
              height: 24.0.h,
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
                          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Store A",
                                style: kBoldWhiteTextStyle.copyWith(
                                  fontSize: 14.0.sp,
                                  color: Colors.black,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: kMainOrange,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      )),
    );
  }
}
