import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      width: 1.sw,
      height: 55.h,
      decoration: BoxDecoration(
        color: const Color(0xFFD6D0FF),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.r),
          topRight: Radius.circular(15.r),
        ),
        border: const Border(
          top: BorderSide(
            color: Color(0x7A685CBF),
            width: 1.5
          )
        )
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buid_item(context,'assets/images/icons/setting.svg', 0, currentIndex, 35.w, 35.h, (){context.push('/settings');}),
          _buid_item(context,'assets/images/icons/collaborator.svg', 1, currentIndex, 35.w, 35.h, (){context.push('/collaborations');}),
          _buid_item(context,'assets/images/icons/home.svg', 2, currentIndex, 40.w, 35.h, (){context.push('/home');}),
          _buid_item(context,'assets/images/icons/calendar.svg', 3, currentIndex, 40.w, 30.h, (){context.push('/calendar');}),
          _buid_item(context,'assets/images/icons/account_2.svg', 4, currentIndex, 35.w, 40.h, (){context.push('/account');}),

        ],
      ),
    );
  }

  Widget _buid_item(context, imagePath, Index, CurrentIndex, width, height, onTapCallBack){
    return GestureDetector(
      onTap: onTapCallBack,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(imagePath, height: height,),
          SizedBox(height: 6.h,),

          Builder(builder: (context){
            if (CurrentIndex == Index){
              return Container(
                width: width,
                height: 3,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(4.r)
                ),
              );
            }
            return const SizedBox();
          }),

        ],
      ),
    );
  }

}
