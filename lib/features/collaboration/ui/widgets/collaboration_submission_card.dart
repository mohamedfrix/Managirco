import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CollaborationSubmissionCard extends StatelessWidget {
  const CollaborationSubmissionCard({
    super.key,
    required this.name,
    required this.state,
    required this.deadlineDate,
    required this.deadlineTime,
    required this.attachementsNum,
    required this.membersNum,
    required this.validated
  });

  final name;
  final state;
  final deadlineDate;
  final deadlineTime;
  final attachementsNum;
  final membersNum;
  final validated;



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
      //height: 160.h,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
            color: Colors.black,
            width: 2
        ),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$name',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: SvgPicture.asset('assets/images/icons/three_dots.svg', height: 17.h,),
              )
            ],
          ),
          SizedBox(height: 15.h,),
          Row(
            children: [
              Text(
                'State',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(width: 10.w,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 4.h),
                decoration: BoxDecoration(
                    color: _state_color_helper(state),
                    borderRadius: BorderRadius.circular(12.r)
                ),
                child: Text(
                  '${_state_name_helper(state)}',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 10.sp,
                      fontFamily: 'Montserrat'
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 15.h,),
          Row(
            children: [
              SvgPicture.asset('assets/images/icons/pin.svg', height: 22.h,),
              SizedBox(width: 5.w,),
              Text(
                'Deadline',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(width: 5.w,),
              Text(
                '$deadlineDate',
                style: TextStyle(
                  color: const Color(0xFF969696),
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(width: 5.w,),
              Text(
                'at:',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(width: 5.w,),
              Text(
                '$deadlineTime',
                style: TextStyle(
                  color: const Color(0xFF969696),
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat',
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SvgPicture.asset('assets/images/icons/clip2.svg'),
                      SizedBox(width: 5.w,),
                      Text(
                        '$attachementsNum',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            fontSize: 11.sp
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 15.w,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SvgPicture.asset('assets/images/icons/members.svg',height: 25.h,),
                      SizedBox(width: 5.w,),
                      Text(
                        '$membersNum',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            fontSize: 11.sp
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );;
  }



  Color _state_color_helper(state){
    if (state == 0){
      return const Color(0xFF7FFF7C);
    }
    else if (state == 1){
      return const Color(0xFFFF9148);
    }
    else if (state == 2){
      return const Color(0xFFFFFC5A);
    }
    return const Color(0x00000000);
  }

  String _state_name_helper(state){
    if (state == 0){
      return 'Terminated';
    }
    else if (state == 1){
      return 'On progress';
    }
    else if (state == 2){
      return 'Assigned';
    }
    return '';
  }
}
