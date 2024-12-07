import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_project/features/botton_navigation/ui/custom_bottom_navigation_bar.dart';
import 'package:mobile_project/features/collaboration/ui/widgets/collaboration_task_card.dart';

class CollaborationTasksScreen extends StatelessWidget {
  const CollaborationTasksScreen({
    super.key, required this.tasks, });

  final tasks;


  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [

        Column(
          children: [
            SizedBox(height: 30.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'List of tasks:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: SvgPicture.asset('assets/images/icons/filter.svg', height: 30.h,),
                  )
                ],
              ),
            ),
            SizedBox(height: 30.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                width: 1.sw,
                height: 550.h,
                child: ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (context, index){
                    return CollaborationTaskCard(
                        name: tasks[index]['name'],
                        state: tasks[index]['state'],
                        deadlineDate: tasks[index]['deadlineDate'],
                        deadlineTime: tasks[index]['deadlineTime'],
                        attachementsNum: tasks[index]['attachementsNum'],
                        membersNum: tasks[index]['membersNum'],
                        validated: tasks[index]['validated'],
                      color: tasks[index]['color'],
                    );
                  }
                ),
              ),
            )
          ],
        ),

        GestureDetector(
          onTap: (){context.push('/tasks/create');},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
            child: Container(
              width: 50.w,
              height: 50.w,
              decoration: BoxDecoration(
                color: const Color(0xFF685CBF),
                borderRadius: BorderRadius.circular(60.r),
              ),
              child: Center(
                child: Text(
                  '+',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            ),
          ),
        ),
      ]
    );
  }
}
