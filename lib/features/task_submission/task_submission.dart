import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_project/features/task_submission/attached_file.dart';

class TaskSubmission extends StatefulWidget {
  const TaskSubmission({super.key});

  @override
  State<TaskSubmission> createState() => _TaskSubmissionState();
}

class _TaskSubmissionState extends State<TaskSubmission> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      onTap: () {
                        context.pop();
                      },
                      child: SvgPicture.asset(
                        'assets/images/icons/arrow_back.svg',
                        height: 35.h,
                      )),
                  Text(
                    'Submssions',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.push('/events/create');
                    },
                    child: Text(
                      '',
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
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 20),
            child: Text(
              'Attached files',
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 18.sp,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'find here all attached file',
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          AttachedFiles(),
          SizedBox(
            height: 10.h,
          ),
          AttachedFiles(),
        ]))));
  }
}
