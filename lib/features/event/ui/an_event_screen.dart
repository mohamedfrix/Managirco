import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class AnEventScreen extends StatelessWidget {
  AnEventScreen({super.key, required this.eventName});

  final eventName;
  final projectManager = 'Moulay Mohamed Bouabdelli';
  final managerRole = 'Design manager';
  final eventType = 'Coding Competition';
  final startDate = '7 Dec 2024';
  final endDate = '7 Dec 2024 ';
  final description = 'Unleash your coding skills at CodeFusion Hackathon, a 48-hour competitive programming event where innovators, developers, and problem-solvers come together to tackle real-world challenges. Participants will form teams to design, develop, and deploy creative solutions across various domains, including web development, machine learning, mobile apps, and gaming.';

  final collaborations = [
    'Graphic Design', 'Marketing', 'Finance', 'Web Dev', 'UI Design'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
                          onTap: (){context.pop();},
                          child: SvgPicture.asset('assets/images/icons/arrow_back.svg', height: 35.h,)
                      ),
                      Text(
                        '$eventName',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      SizedBox(width: 30.w,),
                    ],
                  ),
                ),
              ),
          
              SizedBox(height: 30.h,),
          
              Container(
                width: 120.w,
                height: 120.w,
                decoration: BoxDecoration(
                  color: Color(0xFFD6D0FF),
                  borderRadius: BorderRadius.circular(80.r)
                ),
                child: Center(
                  child: Text(
                    'LOGO',
                    style: TextStyle(
                      color: Color(0xFF685CBF),
                      fontSize: 18.sp,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
              ),
          
              SizedBox(height: 20.h,),
          
              Text(
                '$eventName',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600
                ),
              ),
          
              SizedBox(height: 40.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  width: 1.sw,
                  child: Text(
                    'Project Manager:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Montserrat'
                    ),
                  ),
                ),
              ),
          
              SizedBox(height: 10.h,),
          
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/icons/account.svg'),
                    SizedBox(width: 10.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '$projectManager',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            fontSize: 12.sp
                          ),
                        ),
                        Text(
                          '$managerRole',
                          style: TextStyle(
                            color: Color(0xFF8C8C8C),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
          
              SizedBox(height: 15.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Collaborations',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18.sp,
                        fontFamily: 'Montserrat',
                      ),
                    ),
          
                    Text(
                      'See all',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black,
                        decorationThickness: 1,
                        fontSize: 14.sp,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                      ),
                    ),
                  ],
                ),
              ),
          
              SizedBox(height: 15.h,),
          
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 6.h),
                          decoration: BoxDecoration(
                            color: const Color(0xFFD6D0FF),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Center(
                            child: Text(
                              '${collaborations[0]}',
                              style: TextStyle(
                                color: Color(0xFF7E72D1),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                fontSize: 12.sp
                              ),
                            ),
                          ),
                        ),
          
                        SizedBox(width: 10.w,),
          
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 6.h),
                          decoration: BoxDecoration(
                            color: const Color(0xFFD6D0FF),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Center(
                            child: Text(
                              '${collaborations[1]}',
                              style: TextStyle(
                                  color: Color(0xFF7E72D1),
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.sp
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
          
                    SizedBox(height: 10.h,),
          
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 6.h),
                          decoration: BoxDecoration(
                            color: const Color(0xFFD6D0FF),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Center(
                            child: Text(
                              '${collaborations[1]}',
                              style: TextStyle(
                                  color: Color(0xFF7E72D1),
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.sp
                              ),
                            ),
                          ),
                        ),
          
                        SizedBox(width: 10.w,),
          
                        Builder(builder: (context){
                          if (collaborations.length - 3 > 0){
                            return Container(
                              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
                              decoration: BoxDecoration(
                                color: const Color(0xFFD6D0FF),
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: Center(
                                child: Text(
                                  '+${max(0, collaborations.length - 1)}',
                                  style: TextStyle(
                                      color: Color(0xFF7E72D1),
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.sp
                                  ),
                                ),
                              ),
                            );
                          }
                          return const SizedBox();
                        }),
                        
                      ],
                    )
          
                  ],
                ),
              ),
          
              SizedBox(height: 20.h,),
              
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  width: 1.sw,
                  child: Text(
                    'Event Type:',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFD6D0FF),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  width: 1.sw,
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  child: Text(
                    '$eventType',
                    style: TextStyle(
                      color: const Color(0xFF7E72D1),
                      fontFamily: 'Montserrat',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
          
              SizedBox(height: 20.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  width: 1.sw,
                  child: Text(
                    'Date:',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  width: 1.sw,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
                        width: 140.w,
                        height: 65.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(
                            color: Color(0xFF7E72D1),
                            width: 1.5
                          )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Start date',
                              style: TextStyle(
                                color: Color(0xFF685CBF),
                                fontFamily: 'Montserrat',
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            SizedBox(height: 6.h,),
                            Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Text(
                                '$startDate',
                                style: TextStyle(
                                  color: Color(0x9E7E72D1),
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11.sp
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 15.w,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
                        width: 140.w,
                        height: 65.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            border: Border.all(
                                color: Color(0xFF7E72D1),
                                width: 1.5
                            )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'End date',
                              style: TextStyle(
                                  color: Color(0xFF685CBF),
                                  fontFamily: 'Montserrat',
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            SizedBox(height: 6.h,),
                            Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Text(
                                '$startDate',
                                style: TextStyle(
                                    color: Color(0x9E7E72D1),
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11.sp
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 30.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  width: 1.sw,
                  child: Text(
                    'Description:',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  '$description',
                  style: TextStyle(
                    color: Color(0xFFACA3E2),
                    fontFamily: 'Montserrat',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700
                  ),
                ),
              ),

              SizedBox(height: 50.h,),
            ],
          ),
        ),
      )
    );
  }
}
