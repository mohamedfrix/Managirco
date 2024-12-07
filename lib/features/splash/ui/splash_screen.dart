import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../bloc/splash_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state is SplashNavigateToWelcome) {
          context.go('/welcome');
        }
      },
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/logo/logo_purple.svg'),
                SizedBox(width: 20.w,),
                Text(
                  'Managirco',
                  style: TextStyle(
                      fontFamily: 'Mont',
                      fontSize: 34.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w700
                  ),
                )
              ],
            ),
          )
      ),
      )
    );
  }
}
