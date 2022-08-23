import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(10.0.r)),
      child: Center(
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.0.w),
              child: Icon(Icons.search),
            ),
            Expanded(
              child: TextFormField(
                // inputFormatters: [
                //   LengthLimitingTextInputFormatter(1)
                // ],
                decoration: InputDecoration(
                  // prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.only(left: 10.0),
                  hintText: "Search Store",
                  border: InputBorder.none,
                  hintStyle: GoogleFonts.inter(
                    color: Colors.black54,
                  ),
                ),
                keyboardType: TextInputType.text,
                style: GoogleFonts.inter(
                  color: Colors.black,
                ),
                onChanged: (value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
