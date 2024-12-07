import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_project/features/botton_navigation/ui/custom_bottom_navigation_bar.dart';

class Taskdetails extends StatefulWidget {
  const Taskdetails({super.key, required this.name});
  final name;

  @override
  State<Taskdetails> createState() => _TaskdetailsState();
}

class _TaskdetailsState extends State<Taskdetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  '${widget.name}',
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
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Task name",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  fontFamily: "Montserrat",
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Graphic chart",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  fontFamily: "Montserrat",
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Collaboration name",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  fontFamily: "Montserrat",
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Graphic - DEV",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  fontFamily: "Montserrat",
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Collaboration name",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  fontFamily: "Montserrat",
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Graphic - DEV",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  fontFamily: "Montserrat",
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Supervisor",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  fontFamily: "Montserrat",
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Container(
                    width: 80.w,
                    height: 80.h,
                    child: SvgPicture.asset("assets/images/icons/account.svg"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Moulay Bouabdelli",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                          fontFamily: "Montserrat",
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Design Manager",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp,
                          fontFamily: "Montserrat",
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Text(
                "Assigned to",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  fontFamily: "Montserrat",
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Container(
                    width: 70.w,
                    height: 70.h,
                    child:
                        SvgPicture.asset("assets/images/icons/account_2.svg"),
                  ),
                  Container(
                    width: 70.w,
                    height: 70.h,
                    child:
                        SvgPicture.asset("assets/images/icons/account_2.svg"),
                  ),
                  Container(
                    width: 70.w,
                    height: 70.h,
                    child:
                        SvgPicture.asset("assets/images/icons/account_2.svg"),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Start date",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                          fontFamily: "Montserrat",
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 70.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 30.w,
                              height: 30.h,
                              child: SvgPicture.asset(
                                  "assets/images/icons/calendar.svg"),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              "mm/dd/yyyy",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                fontFamily: "Montserrat",
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "End date",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                          fontFamily: "Montserrat",
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 70.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 30.w,
                              height: 30.h,
                              child: SvgPicture.asset(
                                  "assets/images/icons/calendar.svg"),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              "mm/dd/yyyy",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                fontFamily: "Montserrat",
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Task description:",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
              fontFamily: "Montserrat",
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "in this task you will design a graphic chart for the upcoming event",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 15.sp,
              fontFamily: "Montserrat",
            ),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Acceptance criteria: ",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
              fontFamily: "Montserrat",
            ),
          ),
        ),
        SizedBox(height: 15.h),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                width: 20.w,
                height: 20.h,
                child: SvgPicture.asset("assets/images/icons/checked.svg"),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                "You should be Gojo satoru",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.sp,
                  fontFamily: "Montserrat",
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Status",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontSize: 16.sp,
              fontFamily: "Montserrat",
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            alignment: Alignment.center,
            height: 30.h,
            width: 120.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.orange),
            child: Text(
              "On prgoress",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 15.sp,
                fontFamily: "Montserrat",
              ),
            ),
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Attached resources: ",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 15.sp,
              fontFamily: "Montserrat",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: double.infinity,
            height: 80.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 30.w,
                    height: 30.h,
                    child: SvgPicture.asset(
                      "assets/images/icons/drive.svg",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "Project SRS",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                    fontFamily: "Montserrat",
                  ),
                ),
                Expanded(child: SizedBox(width: 10.w)),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 30.w,
                    height: 30.h,
                    child: SvgPicture.asset("assets/images/icons/trash.svg"),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Submission resources: ",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 15.sp,
              fontFamily: "Montserrat",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: double.infinity,
            height: 80.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 30.w,
                    height: 30.h,
                    child: SvgPicture.asset(
                      "assets/images/icons/drive.svg",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "Graphic chart",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                    fontFamily: "Montserrat",
                  ),
                ),
                Expanded(child: SizedBox(width: 10.w)),
                GestureDetector(
                  onTap: () {
                    context.push('/review');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 30.w,
                      height: 30.h,
                      child: SvgPicture.asset("assets/images/icons/move_page.svg"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 30.w,
                    height: 30.h,
                    child: SvgPicture.asset("assets/images/icons/trash.svg"),
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    )));
  }
}
