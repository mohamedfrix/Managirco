import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class ReviewTask extends StatefulWidget {
  const ReviewTask({super.key});

  @override
  State<ReviewTask> createState() => _ReviewTaskState();
}

class _ReviewTaskState extends State<ReviewTask> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
          Container(
            width: 1.sw,
            height: 60.h,
            color: Theme.of(context).primaryColorDark,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        context.pop();
                      },
                      child: SvgPicture.asset(
                        'assets/images/icons/arrow_back.svg',
                        height: 35.h,
                      )),
                  Text(
                    'Review',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.push('/events/create');
                    },
                    child: Text(
                      '',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 36.sp,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "task",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: "Montserrat",
                          fontSize: 20.sp),
                    ),
                    Text(
                      "Review",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: "Montserrat",
                          fontSize: 30.sp),
                    )
                  ],
                ),
                Container(
                  width: 65.w,
                  height: 65.h,
                  child: SvgPicture.asset("assets/images/icons/eye.svg",
                      fit: BoxFit.contain),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Non satisfied criteria",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: "Montserrat",
                  fontSize: 16.sp),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Container(
                  width: 30.h,
                  height: 30.h,
                  child: SvgPicture.asset(
                    "assets/images/icons/flag.svg",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  "Your not Moulay",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Montserrat",
                      fontSize: 15.sp),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Container(
                  width: 30.h,
                  height: 30.h,
                  child: SvgPicture.asset(
                    "assets/images/icons/flag.svg",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  "Your not Frix",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Montserrat",
                      fontSize: 15.sp),
                ),
              ],
            ),
          )
        ]))));
  }
}
