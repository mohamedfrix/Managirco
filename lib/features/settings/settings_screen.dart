import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_project/features/botton_navigation/ui/custom_bottom_navigation_bar.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: CustomBottomNavigationBar(
            currentIndex: 0,
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
                        "Settings",
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
                          "Set",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: "Montserrat",
                              fontSize: 18.sp),
                        ),
                        Text(
                          "Settings",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: "Montserrat",
                              fontSize: 24.sp),
                        )
                      ],
                    ),
                    Container(
                      width: 40.w,
                      height: 40.h,
                      child: SvgPicture.asset("assets/images/icons/setting.svg",),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 100.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11.r),
                      border: Border.all(color: Colors.black, width: 1)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 30.h,
                          height: 30.w,
                          child: SvgPicture.asset(
                            "assets/images/icons/notifications_2.svg",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Text(
                          "Receive notification",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp),
                        ),
                        Expanded(child: SizedBox()),
                        Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                              });
                            })
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
