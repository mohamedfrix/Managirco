import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_project/features/botton_navigation/ui/custom_bottom_navigation_bar.dart';
import 'package:mobile_project/features/myTeam/widgets/userCard.dart';

class MyTeam extends StatefulWidget {
  const MyTeam({super.key});

  @override
  State<MyTeam> createState() => _MyTeamState();
}

class _MyTeamState extends State<MyTeam> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: CustomBottomNavigationBar(
            currentIndex: 1,
          ),
          body: Column(
            children: [
              Container(
                width: 1.sw,
                height: 60.h,
                color: Theme.of(context).primaryColorDark,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "My Team",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "My",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: "Montserrat",
                              fontSize: 18.sp),
                        ),
                        Text(
                          "Team",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: "Montserrat",
                              fontSize: 26.sp),
                        )
                      ],
                    ),
                    Container(
                      width: 65.w,
                      height: 65.h,
                      child: SvgPicture.asset("assets/images/icons/team_2.svg",
                          fit: BoxFit.contain),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Leader:",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: MemberCard(
                  name: "Moulay Mohamed Bouabdelli",
                  role: "Design Manager",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Teammates:",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                        fontFamily: "Montserrat",
                      ),
                    ),
                    Text(
                      "+ Add",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        fontFamily: "Montserrat",
                        decoration: TextDecoration.underline,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            MemberCard(
                                name: "Mohamed Frix", role: "Web Dev manager"),
                            Expanded(
                              child: SizedBox(
                                width: 15.w,
                              ),
                            ),
                            Container(
                              width: 30.w,
                              height: 30.h,
                              child: SvgPicture.asset(
                                "assets/images/icons/trash.svg",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              )
            ],
          )),
    );
    ;
  }
}
