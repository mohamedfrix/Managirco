import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeFirstScreen extends StatelessWidget {
  const WelcomeFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80.h,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Container(
            width: 1.sw,
            child: Center(
              child: Image.asset(
                  'assets/images/images/Illustration.png'
              ),
            ),
          ),
        ),
        SizedBox(height: 60.h,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Container(
            width: 1.sw,
            child: Column(
              children: [
                Text(
                  "Accomplish",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 30.sp,
                    color: Theme.of(context).primaryColorDark,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                SizedBox(height: 15.h,),

                Text(
                  "Intuitive pro management tool with \n excellent development project scenarios \n to help organise your tasks and keep \n things moving along nicely",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 11.sp,
                    color: Theme.of(context).primaryColorDark,
                    fontWeight: FontWeight.w500,
                  ),
                ),

              ],
            ),
          ),
        ),
      ],
    );
  }
}
