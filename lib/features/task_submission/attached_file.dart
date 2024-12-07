import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AttachedFiles extends StatelessWidget {
  const AttachedFiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: double.infinity,
          height: 80.h,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1)),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 30.w,
                  height: 30.h,
                  child: SvgPicture.asset(
                    "assets/images/icons/googleDrive.svg",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                "Graphic chart",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  fontFamily: "Montserrat",
                ),
              ),
              Expanded(child: SizedBox(width: 10.w)),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 30.w,
                  height: 30.h,
                  child: SvgPicture.asset("assets/images/icons/trash.svg"),
                ),
              )
            ],
          ),
        ));
  }
}
