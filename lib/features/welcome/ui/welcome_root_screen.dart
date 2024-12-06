import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_project/features/welcome/bloc/welcome_bloc.dart';
import 'package:mobile_project/features/welcome/ui/widgets/welcome_first_screen.dart';
import 'package:mobile_project/features/welcome/ui/widgets/welcome_second_screen.dart';
import 'package:mobile_project/features/welcome/ui/widgets/welcome_third_screen.dart';
import 'package:mobile_project/resources/color_palette.dart';
import 'package:mobile_project/router/app_router.dart';

class WelcomeRootScreen extends StatelessWidget {
  const WelcomeRootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BlocBuilder<WelcomeBloc, WelcomeState>(
            builder: (context, state){
              if (state is WelcomeScreenPage) {
                if (state.pageNum == 0){
                  return const WelcomeFirstScreen();
                }
                else if(state.pageNum == 1){
                  return const WelcomeSecondScreen();
                }
                else if (state.pageNum == 2){
                  return const WelcomeThirdScreen();
                }
              }
              return const SizedBox();
            },
          ),

          const Spacer(),

          BlocBuilder<WelcomeBloc, WelcomeState>(
            builder: (context, state) {
              if (state is WelcomeScreenPage){
                List <Widget> pageIndex = [];
                int numberOfPages = 3;
                for (int i = 0; i < numberOfPages; i++){
                  if (i == state.pageNum){
                    pageIndex.add(Container(
                      width: 20.w,
                      height: 8.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        color: Theme.of(context).primaryColorDark
                      ),
                    ));
                  }
                  else {
                    pageIndex.add(Container(
                      width: 8.w,
                      height: 8.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: Theme.of(context).primaryColorLight
                      ),
                    ));
                  }
                  if (i < numberOfPages - 1){
                    pageIndex.add(SizedBox(width: 6.w,));
                  }
                }
                
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: pageIndex,
                );
              }
              return SizedBox();
            }
          ),

          SizedBox(height: 40.h,),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 30.h),
            child: BlocBuilder<WelcomeBloc, WelcomeState>(
              builder: (context, state){
                if (state is WelcomeScreenPage){
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          int numberOfPages = 3;
                          if (state.pageNum < numberOfPages - 1){
                            BlocProvider.of<WelcomeBloc>(context).add(
                                WelcomeChangeScreenNumber(pageNum: state.pageNum + 1)
                            );
                          }
                          else {
                            context.push('/login');
                          }
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 52.h,
                              width: 1.sw,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(26.r),
                                  color: Theme.of(context).primaryColor
                              ),
                              child: Center(
                                child: Text(
                                  'Next',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 15.h,),

                      GestureDetector(
                        onTap: () {
                          if (state.pageNum > 0) {
                            BlocProvider.of<WelcomeBloc>(context).add(
                              WelcomeChangeScreenNumber(pageNum: state.pageNum - 1),
                            );
                          }
                        },
                        child: Container(
                          height: 52.h,
                          width: 1.sw,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(26.r),
                              color: Colors.white,
                              border: Border.all(
                                  width: 1.h,
                                  color: Theme.of(context).primaryColor
                              )
                          ),
                          child: Center(
                            child: Text(
                              'Back',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  );
                }
                return const SizedBox();
              }
            ),
          ),

        ],
      ),
    );
  }
}
