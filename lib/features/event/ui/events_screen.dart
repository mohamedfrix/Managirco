import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_project/features/event/ui/widgets/event_card.dart';

import '../../botton_navigation/ui/custom_bottom_navigation_bar.dart';

class EventsScreen extends StatelessWidget {
  EventsScreen({super.key});

  var events = [
    {'name': 'ETCODE', 'collaborations_num' : 2, 'tasks_num': 12, 'deadline': '7 Dec', 'color' : 'FFC8FDC7'},
    {'name': 'ETCODE', 'collaborations_num' : 2, 'tasks_num': 12, 'deadline': '7 Dec', 'color' : 'FFFAF398'},
    {'name': 'ETCODE', 'collaborations_num' : 2, 'tasks_num': 12, 'deadline': '7 Dec', 'color' : 'FFDDDEFD'},
    {'name': 'ETCODE', 'collaborations_num' : 2, 'tasks_num': 12, 'deadline': '7 Dec', 'color' : 'FFFDC7E6'},
    {'name': 'ETCODE', 'collaborations_num' : 2, 'tasks_num': 12, 'deadline': '7 Dec', 'color' : 'FFFA9898'},
    {'name': 'ETCODE', 'collaborations_num' : 2, 'tasks_num': 12, 'deadline': '7 Dec', 'color' : 'FFC8FDC7'},
    {'name': 'ETCODE', 'collaborations_num' : 2, 'tasks_num': 12, 'deadline': '7 Dec', 'color' : 'FFFAF398'},
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
                      'Events',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600
                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                        context.push('/events/create');
                      },
                      child: Text(
                        '+',
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

            SizedBox(height: 20.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'List of Current Events:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  
                  GestureDetector(
                    onTap: (){},
                    child: SvgPicture.asset('assets/images/icons/filter.svg', ),
                  )
                  
                ],
              ),
            ),

            SizedBox(height: 30.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                width: 1.sw,
                height: 560.h,
                child:  ListView.builder(
                  itemCount: events.length,
                  itemBuilder: (context, index){
                    return EventCard(
                      TapCallBack: (){
                        context.push('/event/ETCODE');
                      },
                      eventName: events[index]['name'],
                      collaborations_num: events[index]['collaboration_name'],
                      tasks_num: events[index]['tasks_num'],
                      color: events[index]['color'],
                      deadline: events[index]['deadline'],
                    );
                  }
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: CustomBottomNavigationBar(currentIndex: 2,),
      ),
    );
  }
}
