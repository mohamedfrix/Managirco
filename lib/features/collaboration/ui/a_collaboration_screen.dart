import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class ACollaborationScreen extends StatelessWidget {
  ACollaborationScreen({super.key, required this.collaborationName});

  final collaborationName;

  var creator = 'Moulay Mohamed Bouabdelli';
  var role = 'Design manager';
  var event = 'ETCODE';
  var teams = [
    {'name' : 'Graphic Design', 'color' : 'C8FDC7'},
    {'name' : 'Developement', 'color' : 'C7F1FD'}
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                      '$collaborationName',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(width: 30.w,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                width: 1.sw,
                child: Text(
                  'Created by:',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  SvgPicture.asset('assets/images/icons/account.svg', height: 50.h,),
                  SizedBox(width: 10.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$creator',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.sp,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      Text(
                        '$role',
                        style: TextStyle(
                            color: Color(0xFF8C8C8C),
                            fontSize: 12.sp,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 30.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                width: 1.sw,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Collaboration Name:',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                        fontSize: 16.sp
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5.w),
                      child: Text(
                        '$collaborationName',
                        style: TextStyle(
                            color: Color(0xFF9B9B9B),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                            fontSize: 14.sp
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                width: 1.sw,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Event:',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 5.h,),
                    Row(
                      children: [
                        Text(
                          'This is a collaboration for the event:',
                          style: TextStyle(
                            color: Color(0xFF8B8B8B),
                            fontWeight: FontWeight.w600,
                            fontSize: 11.sp,
                            fontFamily: 'Montserrat'
                          ),
                        ),
                        SizedBox(width: 5.w,),
                        Text(
                          '$event',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 11.sp,
                              fontFamily: 'Montserrat'
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                width: 1.sw,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Teams involved:',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 5.h,),
                    Text(
                      'This is a collaboration Between:',
                      style: TextStyle(
                          color: Color(0xFF8B8B8B),
                          fontWeight: FontWeight.w600,
                          fontSize: 11.sp,
                          fontFamily: 'Montserrat'
                      ),
                    ),
                    SizedBox(height: 20.h,),
                    Container(
                      width: 1.sw,
                      height: 30.h,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                        itemCount: teams.length,
                        itemBuilder: (context, index){
                          return Container(
                            margin: EdgeInsets.only(right: 10.w),
                            width: 100.w,
                            height: 30.h,
                            decoration: BoxDecoration(
                              color: Color(int.parse('FF${teams[index]['color']!}', radix: 16)),
                              borderRadius: BorderRadius.circular(8.r)
                            ),
                            child: Center(
                              child: Text(
                                '${teams[index]['name']}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Montserrat',
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                          );
                        }
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
