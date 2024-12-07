import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_project/features/collaboration/ui/widgets/collaboration_submission_card.dart';

class CollaborationSubmissionsScreen extends StatelessWidget {
  CollaborationSubmissionsScreen({super.key});

  final tasks = [
    {'name' : 'Graphic Chart', 'state' : 0, 'color' : 'C7FDD3', 'deadlineDate' : '7 Dec 2024', 'deadlineTime' : '12 AM', 'attachementsNum' : 2, 'membersNum': 4, 'validated' : true},
    {'name' : 'Poster', 'state' : 0, 'color' : 'FDDDC7', 'deadlineDate' : '7 Dec 2024', 'deadlineTime' : '12 AM', 'attachementsNum' : 2, 'membersNum': 4, 'validated' : false},
    {'name' : 'Banner', 'state' : 0, 'color' : 'F4FDC7', 'deadlineDate' : '7 Dec 2024', 'deadlineTime' : '12 AM', 'attachementsNum' : 2, 'membersNum': 4, 'validated' : false},

    {'name' : 'Graphic Chart', 'state' : 0, 'color' : 'C7FDD3', 'deadlineDate' : '7 Dec 2024', 'deadlineTime' : '12 AM', 'attachementsNum' : 2, 'membersNum': 4, 'validated' : true},
    {'name' : 'Poster', 'state' : 0, 'color' : 'FDDDC7', 'deadlineDate' : '7 Dec 2024', 'deadlineTime' : '12 AM', 'attachementsNum' : 2, 'membersNum': 4, 'validated' : false},
    {'name' : 'Banner', 'state' : 0, 'color' : 'F4FDC7', 'deadlineDate' : '7 Dec 2024', 'deadlineTime' : '12 AM', 'attachementsNum' : 2, 'membersNum': 4, 'validated' : false},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 35.h,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Container(
            width: 1.sw,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Submissions',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Montserrat',
                    fontSize: 22.sp
                  ),
                ),
                Text(
                  'only validated tasks are considered',
                  style: TextStyle(
                    color: Color(0x70000000),
                    fontSize: 12.sp,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500
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
            height: 500.h,
            child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index){
                  return CollaborationSubmissionCard(
                    name: tasks[index]['name'],
                    state: tasks[index]['state'],
                    deadlineDate: tasks[index]['deadlineDate'],
                    deadlineTime: tasks[index]['deadlineTime'],
                    attachementsNum: tasks[index]['attachementsNum'],
                    membersNum: tasks[index]['membersNum'],
                    validated: tasks[index]['validated'],
                  );
                }
            ),
          ),
        ),
      ],
    );
  }
}
