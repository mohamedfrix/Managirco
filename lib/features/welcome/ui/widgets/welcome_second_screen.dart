import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeSecondScreen extends StatelessWidget {
  const WelcomeSecondScreen({super.key});

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
                  "Focus on Task",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 30.sp,
                    color: Theme.of(context).primaryColorDark,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Management',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 30.sp,
                      color: Theme.of(context).primaryColorDark,
                      fontWeight: FontWeight.w700
                  ),
                ),

                SizedBox(height: 25.h,),

                Text(
                  "Keep track of deadlines and assignments \n with our intuitive task management \n system.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 11.sp,
                    color: Theme.of(context).primaryColorDark,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                Text(
                  "Create custom to-do lists, set reminders,\n and track progress.",
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
