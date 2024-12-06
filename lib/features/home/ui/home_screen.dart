import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_project/features/home/ui/widgets/current_events_section.dart';
import 'package:mobile_project/features/home/ui/widgets/popular_collaborations_section.dart';

import '../../botton_navigation/ui/custom_bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var events = [
    {'name':'ETCODE', 'collaborations_num' : 2, 'tasks_num' : 12, 'deadline':'7 Dec', 'color' : 'FFC8FDC7'},
    {'name':'ETCODE', 'collaborations_num' : 2, 'tasks_num' : 12, 'deadline':'7 Dec', 'color' : 'FFFAF398'},
    {'name':'ETCODE', 'collaborations_num' : 2, 'tasks_num' : 12, 'deadline':'7 Dec', 'color' : 'FFDDDEFD'},
    {'name':'ETCODE', 'collaborations_num' : 2, 'tasks_num' : 12, 'deadline':'7 Dec', 'color' : 'FFFFC4C4'},
    {'name':'ETCODE', 'collaborations_num' : 2, 'tasks_num' : 12, 'deadline':'7 Dec', 'color' : 'FFC8FDC7'},

  ];

  var collaborations = [
    {'name':'Graphic-Marketing', 'event_name' : 'ETCODE', 'tasks_num' : 12,'color' : 'FFC8FDC7'},
    {'name':'Graphic-Marketing', 'event_name' : 'ETCODE', 'tasks_num' : 12, 'color' : 'FFFAF398'},
    {'name':'Graphic-Marketing', 'event_name' : 'ETCODE', 'tasks_num' : 12, 'color' : 'FFDDDEFD'},
    {'name':'Graphic-Marketing', 'event_name' : 'ETCODE', 'tasks_num' : 12, 'color' : 'FFFFC4C4'},
    {'name':'Graphic-Marketing', 'event_name' : 'ETCODE', 'tasks_num' : 12, 'color' : 'FFC8FDC7'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          SizedBox(height: 45.h,),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Managirco',
                  style: TextStyle(
                    color: Color(0xFF8158B0),
                    fontFamily: 'Mont',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700
                  ),
                ),
                GestureDetector(
                  onTap: (){},
                  child: SvgPicture.asset('assets/images/icons/notification.svg')
                ),
              ],
            ),
          ),

          SizedBox(height: 15.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){},
                  child: SvgPicture.asset('assets/images/icons/account.svg', height: 60.h,),
                ),
                SizedBox(width: 10.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello,',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF5B3982),
                      ),
                    ),
                    Text(
                      'Moulay Mohamed Bouabdelli',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF5B3982),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          SizedBox(height: 25.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Container(
              width: 1.sw,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                border: Border.all(
                  width: 1,
                  color: Color(0x33000000),
                )
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 10.w,),
                  SvgPicture.asset('assets/images/icons/search.svg', height: 22.h,),
                  SizedBox(width: 20.w,),

                  Container(
                    width: 210.w,
                    child: TextFormField(
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 11.sp,
                          color: const Color(0xFF8F8F8F),
                          fontWeight: FontWeight.w400
                      ),
                      cursorColor: const Color(0xFF8F8F8F),
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 13.sp,
                            color: const Color(0xFF8F8F8F),
                            fontWeight: FontWeight.w400
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xFFD0CAF9),
                              width: 0
                          ),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xFFD0CAF9),
                              width: 0
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                  Spacer(),
                  
                  GestureDetector(
                    onTap: (){},
                    child: SvgPicture.asset('assets/images/icons/filter.svg', height: 20.h,),
                  ),
                  SizedBox(width: 10.w,)

                ],
              ),
            ),
          ),

          SizedBox(height: 35.h,),
          Container(
            width: 1.sw,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Current Events:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      GestureDetector(
                        onTap: (){},
                        child: Text(
                          'See all',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.black,
                            decorationThickness: 1
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20.h,),

                CurrentEventsSection(data: events,)

              ],
            ),
          ),

          SizedBox(height: 25.h,),
          Container(
            width: 1.sw,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular Collaborations:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      GestureDetector(
                        onTap: (){},
                        child: Text(
                          'See all',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.black,
                              decorationThickness: 1
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20.h,),

                PopularCollaborationsSection(data: collaborations,)

              ],
            ),
          ),

          SizedBox(height: 25.h,),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Approaching Deadlines',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                ),

                GestureDetector(
                  onTap: (){},
                  child: Text(
                    'See Agenda',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black,
                        decorationThickness: 1
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),

      bottomNavigationBar: CustomBottomNavigationBar(currentIndex: 2,),
    );
  }
}
