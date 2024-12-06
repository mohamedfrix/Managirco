import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeThirdScreen extends StatelessWidget {
  const WelcomeThirdScreen({super.key});

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
        SizedBox(height: 30.h,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Container(
            width: 1.sw,
            child: Column(
              children: [
                Text(
                  "Emphasize",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 30.sp,
                    color: Theme.of(context).primaryColorDark,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Text(
                  "Collaboration",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 30.sp,
                    color: Theme.of(context).primaryColorDark,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                SizedBox(height: 15.h,),

                Text(
                  "Connect with your team members and \n share information in real-time. \n Use our built-in messaging and file-sharing \n features to stay organized.",
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
