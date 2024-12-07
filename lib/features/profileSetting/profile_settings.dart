import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_project/features/botton_navigation/ui/custom_bottom_navigation_bar.dart';
import 'package:mobile_project/features/myTeam/widgets/userCard.dart';
import 'package:mobile_project/features/profileSetting/widgets/profile_item.dart';

class ProfileSetting extends StatefulWidget {
  const ProfileSetting({super.key});

  @override
  State<ProfileSetting> createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  var items = [];

  @override
  void initState() {
    // TODO: implement initState
    items = [
      ["Name:", "Moulay Mohamd Bouabdelli"],
      ["Email:", "moulay@gmail.com"],
      ["Role:", "Design manager"]
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: CustomBottomNavigationBar(
            currentIndex: 4,
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
                        "Profile",
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
                          "Profile",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: "Montserrat",
                              fontSize: 24.sp),
                        )
                      ],
                    ),
                    Container(
                      width: 70.w,
                      height: 70.h,
                      child: SvgPicture.asset("assets/images/icons/user_2.svg",
                          fit: BoxFit.contain),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Column(
                children: [
                  Container(
                    width: 100.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 162, 162, 162),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Column(
                    children: [
                      Text(
                        "Moulay Mohamed Bouabdelli",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Design Manager",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            ProfileItem(
                              label: items[index][0],
                              value: items[index][1],
                            ),
                            Expanded(
                              child: SizedBox(
                                width: 15.w,
                              ),
                            ),
                            Container(
                              width: 30.w,
                              height: 30.h,
                              child: SvgPicture.asset(
                                "assets/images/icons/edit.svg",
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
  }
}
