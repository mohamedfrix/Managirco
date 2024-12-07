import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CollaborationChatScreen extends StatelessWidget {
  const CollaborationChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 30.h,),
          SvgPicture.asset('assets/images/images/chat_empty.svg', width: .92.sw,),
          Text(
            'No chat for the Moment',
            style: TextStyle(
              color: Color(0xFF685CBF),
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              fontSize: 15.sp,
            ),
          ),
          SizedBox(height: 10.h,),
          Text(
            'Start a chat !',
            style: TextStyle(
              color: Color(0xFF685CBF),
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              fontSize: 30.sp,
            ),
          ),

          //Expanded(child: SizedBox()),
          SizedBox(height: 125.h,),

          Container(
            width: 1.sw,
            height: 85.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.12), // Black color with 12% opacity
                  offset: Offset(0, 0), // x = 0, y = 0
                  blurRadius: 8.2, // Blur radius
                  spreadRadius: 0, // Spread radius
                ),
              ],
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: TextFormField(
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 11.sp,
                      color: const Color(0xFF8F8F8F),
                      fontWeight: FontWeight.w400
                  ),
                  cursorColor: const Color(0xFF685CBF),
                  decoration: InputDecoration(
                    prefix: Text('   '),
                    prefixStyle: TextStyle(
                      fontSize: 12.sp,
                    ),
                    suffixIcon: GestureDetector(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.only(top: 6.h, bottom: 6.h, right: 15.w),
                        child: SvgPicture.asset('assets/images/icons/clip.svg', height: 20.h,),
                      ),
                    ),
                    hintText: 'Type something...',
                    hintStyle: TextStyle(
                        color: const Color(0xFF685CBF),
                        fontFamily: 'Montserrat',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600
                    ),
                    filled: true,
                    fillColor: Color(0xFFF6F4FF),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(
                        color: Color(0xFF7E72D1),
                        width: 1
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22.r),
                      borderSide: const BorderSide(
                          color: Color(0xFF7E72D1),
                          width: 1
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r),
                      borderSide: const BorderSide(
                          color: Color(0xFF7E72D1),
                          width: 1
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
