import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class PopularCollaborationsSection extends StatelessWidget {
  const PopularCollaborationsSection({super.key, this.data});

  final data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: 1.sw,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (context, index){
            return GestureDetector(
              onTap: (){context.push('/collaboration/${data[index]['name']}');},
              child: Container(
                margin: EdgeInsets.only(left: 10.w),
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                width: 150.w,
                decoration: BoxDecoration(
                    color: Color(int.parse(data[index]['color'].toString(), radix: 16)),
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.h,),
                    Text(
                      data[index]['name'].toString(),
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Row(
                      children: [
                        SvgPicture.asset('assets/images/icons/flag.svg', height: 20.h,),
                        SizedBox(width: 10.w,),
                        Text(
                          '${data[index]['event_name']}',
                          style: TextStyle(
                              color: const Color(0xFF646464),
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Montserrat'
                          ),
                        )
                      ],
                    ),

                    SizedBox(height: 5.h,),

                    Row(
                      children: [
                        SvgPicture.asset('assets/images/icons/clip.svg', height: 20.h,),
                        SizedBox(width: 10.w,),
                        Text(
                          '${data[index]['tasks_num']} Tasks',
                          style: TextStyle(
                              color: const Color(0xFF646464),
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Montserrat'
                          ),
                        )
                      ],
                    ),

                    Spacer(),


                    Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        children: [
                          Spacer(),
                          SvgPicture.asset('assets/images/icons/trash.svg', height: 20.h,),
                          SizedBox(width: 10.w,),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            );
          }),
    );
  }
}
