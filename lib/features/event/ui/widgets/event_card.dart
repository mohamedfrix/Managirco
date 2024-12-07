import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key, required this.TapCallBack, required this.eventName, required this.collaborations_num, required this.tasks_num, required this.deadline, required this.color});

  final TapCallBack;
  final eventName;
  final collaborations_num;
  final tasks_num;
  final deadline;
  final color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: TapCallBack,
      child: Container(
        margin: EdgeInsets.only(bottom: 15.h),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        width: 1.sw,
        height: 160.h,
        decoration: BoxDecoration(
          color: Color(int.parse(color, radix: 16)),
          border: Border.all(
            color: Colors.black,
            width: 1
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$eventName',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Montserrat',
                    fontSize: 20.sp
                  ),
                ),

                SizedBox(height: 10.h,),

                Row(
                  children: [
                    SizedBox(width: 10.w,),
                    SvgPicture.asset('assets/images/icons/collaborator.svg'),
                    SizedBox(width: 5.w,),
                    Text(
                      '$collaborations_num Collaborations',
                      style: TextStyle(
                        color: Color(0xFF4E4E4E),
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        fontFamily: 'Montserrat'
                      ),
                    )
                  ],
                ),

                SizedBox(height: 8.h,),
                Row(
                  children: [
                    SizedBox(width: 10.w,),
                    SvgPicture.asset('assets/images/icons/clip.svg'),
                    SizedBox(width: 5.w,),
                    Text(
                      '$tasks_num Tasks',
                      style: TextStyle(
                          color: Color(0xFF4E4E4E),
                          fontWeight: FontWeight.w400,
                          fontSize: 10.sp,
                          fontFamily: 'Montserrat'
                      ),
                    )
                  ],
                ),


              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 10.h,),
                SvgPicture.asset('assets/images/icons/move_page.svg', height: 22.h,),
                Spacer(),
                Row(
                  children: [
                    SvgPicture.asset('assets/images/icons/clock.svg', height: 22.h,),
                    SizedBox(width: 5.w,),
                    Text(
                      '$deadline',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 11.sp
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
