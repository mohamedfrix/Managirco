import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_project/features/collaboration/ui/widgets/collaboration_card.dart';
import 'package:mobile_project/features/event/ui/widgets/event_card.dart';

import '../../botton_navigation/ui/custom_bottom_navigation_bar.dart';

class CollaborationsScreen extends StatelessWidget {
  CollaborationsScreen({super.key});

  var events = [
    {'name': 'Graphic Design', 'collaborations_num' : 30, 'tasks_num': 12, 'deadline': '7 Dec', 'color' : 'FFC8FDC7'},
    {'name': 'Development', 'collaborations_num' : 30, 'tasks_num': 12, 'deadline': 'Today', 'color' : 'FFFAF398'},
    {'name': 'Marketing - Graphic', 'collaborations_num' : 30, 'tasks_num': 12, 'deadline': '7 Dec', 'color' : 'FFDDDEFD'},
    {'name': 'Finance - Logistics', 'collaborations_num' : 22, 'tasks_num': 12, 'deadline': 'Today', 'color' : 'FFFDC7E6'},
    {'name': 'Graphic Design', 'collaborations_num' : 10, 'tasks_num': 12, 'deadline': '7 Dec', 'color' : 'FFFA9898'},
    {'name': 'Development', 'collaborations_num' : 12, 'tasks_num': 12, 'deadline': '7 Dec', 'color' : 'FFC8FDC7'},
    {'name': 'Finance - Logistics', 'collaborations_num' : 22, 'tasks_num': 12, 'deadline': '7 Dec', 'color' : 'FFFAF398'},
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
                      'Collaborations',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w600
                      ),
                    ),

                    GestureDetector(
                      onTap: (){context.push('/collaborations/create');},
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
                    'List of all collaborations :',
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
                      return CollaborationCard(
                        TapCallBack: (){
                          context.push('/collaboration/${events[index]['name']}');
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
