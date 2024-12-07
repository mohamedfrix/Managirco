import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CollaborationCard extends StatelessWidget {
  const CollaborationCard({super.key, required this.TapCallBack, required this.eventName, required this.collaborations_num, required this.tasks_num, required this.deadline, required this.color});

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
              width: 2
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SvgPicture.asset('assets/images/icons/pen.svg', height: 25.h,),
              ],
            ),
            Container(
              width: 1.sw,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Next Deadline:',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      SizedBox(width: 10.h,),
                      Text(
                        '$deadline',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset('assets/images/icons/trash.svg', height: 25.h,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
