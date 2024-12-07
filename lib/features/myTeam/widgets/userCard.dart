import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MemberCard extends StatelessWidget {
  var name = "";
  var role = "";
  MemberCard({super.key, required this.name, required this.role});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 70.w,
          child: SvgPicture.asset(
            "assets/images/icons/account.svg",
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                  fontFamily: "Montserrat"),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              role,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  fontFamily: "Montserrat"),
            )
          ],
        ),
      ],
    );
  }
}
