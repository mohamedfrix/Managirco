import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class AddEventScreen extends StatefulWidget {
  AddEventScreen({super.key});

  @override
  State<AddEventScreen> createState() => _AddEventScreenState();
}

class _AddEventScreenState extends State<AddEventScreen> {
  var _event_name_controller = TextEditingController();

  var _event_type_controller = TextEditingController();

  var _event_start_date_controller = TextEditingController();

  var _event_end_date_controller = TextEditingController();

  var _event_description_controller = TextEditingController();

  var colors = [
    'C8FDC7', 'FDC7C7', 'FDE7C7', 'C7FDEB', 'C7CAFD', 'FDC7ED', 'F6FDC7', 'C7F6FD', 'C7D5FD'
  ];

  var _selected_color;

  @override
  initState(){
    super.initState();
    _selected_color = colors[0];
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
                          onTap: (){context.pop();},
                          child: SvgPicture.asset('assets/images/icons/arrow_back.svg', height: 35.h,)
                      ),
                      Text(
                        'Create an Event',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      SizedBox(width: 30.w,),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 25.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'create',
                          style: TextStyle(
                            color: const Color(0xFF3A346A),
                            fontFamily: 'Montserrat',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Text(
                          'New Event',
                          style: TextStyle(
                              color: const Color(0xFF3A346A),
                              fontFamily: 'Montserrat',
                              fontSize: 26.sp,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                    SvgPicture.asset('assets/images/icons/brain.svg', height: 50.h,),
                  ],
                ),
              ),

              SizedBox(height: 40.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Event name:',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600
                      ),
                    ),

                    SizedBox(height: 10.h,),
                    TextFormField(
                      controller: _event_name_controller,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 11.sp,
                          color: const Color(0xFF8F8F8F),
                          fontWeight: FontWeight.w400
                      ),
                      cursorColor: const Color(0xFF685CBF),
                      decoration: InputDecoration(
                        hintText: 'Enter Name...',
                        hintStyle: TextStyle(
                          color: const Color(0xFF685CBF),
                          fontFamily: 'Montserrat',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500
                        ),
                        filled: true,
                        fillColor: Color(0xFFD8D3FE),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 35.h,),
              Column(
                children: [
                  Text(
                    'Choose Logo:',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                    ),
                  ),
                  SizedBox(height: 15.h,),
                  Container(
                    height: 120.w,
                    width: 120.w,
                    decoration: BoxDecoration(
                      color: Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(120.r),
                    ),
                    child: Center(
                      child: Text(
                        '+',
                        style: TextStyle(
                          fontSize: 34.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontFamily: 'Montserrat'
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 35.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  width: 1.sw,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Choose Project Manager:',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      SizedBox(height: 15.h,),
                      Container(
                        width: 180.w,
                        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                        decoration: BoxDecoration(
                          color: const Color(0xFFD8D3FE),
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/images/icons/add_user.svg'),
                            SizedBox(width: 10.w,),
                            Text(
                              'Add a Team',
                              style: TextStyle(
                                color: const Color(0xFF685CBF),
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Montserrat'
                              ),
                            ),
                            Spacer(),
                            Text(
                              '+',
                              style: TextStyle(
                                color: const Color(0xFF685CBF),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                fontSize: 24.sp
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 40.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enter the event type:',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600
                      ),
                    ),

                    SizedBox(height: 10.h,),
                    TextFormField(
                      controller: _event_type_controller,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 11.sp,
                          color: const Color(0xFF8F8F8F),
                          fontWeight: FontWeight.w400
                      ),
                      cursorColor: const Color(0xFF685CBF),
                      decoration: InputDecoration(
                        hintText: 'Enter Type...',
                        hintStyle: TextStyle(
                            color: const Color(0xFF685CBF),
                            fontFamily: 'Montserrat',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500
                        ),
                        filled: true,
                        fillColor: Color(0xFFD8D3FE),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 35.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Start Date:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Montserrat'
                          ),
                        ),
                        SizedBox(height: 10.h,),
                        Container(
                          width: 140.w,
                          child: TextFormField(
                            controller: _event_start_date_controller,
                            cursorColor: Color(0xFF838383),
                            style: TextStyle(
                              color: Color(0xFF838383),
                              fontSize: 10.sp,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                            ),
                            decoration: InputDecoration(
                              prefixIcon: Container(
                                padding: EdgeInsets.symmetric(vertical: 8.h),
                                height: 15.h,
                                child: SvgPicture.asset('assets/images/icons/calendar.svg', height: 15.h,)
                              ),
                              hintText: 'dd/mm/yyyy',
                              hintStyle: TextStyle(
                                  color: const Color(0xFF838383),
                                  fontFamily: 'Montserrat',
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: const BorderSide(
                                  color: Color(0xFF7E72D1),
                                  width: 1
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: const BorderSide(
                                    color: Color(0xFF7E72D1),
                                    width: 1
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: const BorderSide(
                                    color: Color(0xFF7E72D1),
                                    width: 1
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'End Date:',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Montserrat'
                          ),
                        ),
                        SizedBox(height: 10.h,),
                        Container(
                          width: 140.w,
                          child: TextFormField(
                            controller: _event_end_date_controller,
                            cursorColor: Color(0xFF838383),
                            style: TextStyle(
                              color: Color(0xFF838383),
                              fontSize: 10.sp,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                            ),
                            decoration: InputDecoration(
                              prefixIcon: Container(
                                  padding: EdgeInsets.symmetric(vertical: 8.h),
                                  height: 15.h,
                                  child: SvgPicture.asset('assets/images/icons/calendar.svg', height: 15.h,)
                              ),
                              hintText: 'dd/mm/yyyy',
                              hintStyle: TextStyle(
                                  color: const Color(0xFF838383),
                                  fontFamily: 'Montserrat',
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: const BorderSide(
                                    color: Color(0xFF7E72D1),
                                    width: 1
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: const BorderSide(
                                    color: Color(0xFF7E72D1),
                                    width: 1
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: const BorderSide(
                                    color: Color(0xFF7E72D1),
                                    width: 1
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 40.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Add Description:',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600
                      ),
                    ),

                    SizedBox(height: 10.h,),
                    TextFormField(
                      controller: _event_description_controller,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 11.sp,
                          color: const Color(0xFF8F8F8F),
                          fontWeight: FontWeight.w400
                      ),
                      cursorColor: const Color(0xFF685CBF),
                      decoration: InputDecoration(
                        suffixIcon: Container(
                          padding: EdgeInsets.symmetric(vertical: 6.h),
                          child: Text(
                            '+',
                            style: TextStyle(
                              color: const Color(0xFF685CBF),
                              fontWeight: FontWeight.w600,
                              fontSize: 24.sp,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                        hintText: 'Description',
                        hintStyle: TextStyle(
                            color: const Color(0xFF685CBF),
                            fontFamily: 'Montserrat',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600
                        ),
                        filled: true,
                        fillColor: Color(0xFFD8D3FE),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 40.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  width: 1.sw,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Select Color:',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600
                        ),
                      ),

                      SizedBox(height: 10.h,),

                      Container(
                        width: 1.sw,
                        height: 50.h,
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                          itemCount: colors.length,
                          itemBuilder: (context, index){
                            return GestureDetector(
                              onTap: (){
                                _selected_color = colors[index];
                                setState(() {
                                });
                              },
                              child: Container(
                                width: 50.w,
                                height: 50.w,
                                margin: EdgeInsets.only(right: 10.w),
                                decoration: BoxDecoration(
                                  color: Color(int.parse('FF${colors[index]}', radix: 16)),
                                  borderRadius: BorderRadius.circular(50.r),
                                  border: Border.all(
                                    color: _selected_color == colors[index] ? Colors.black : Color(0x00000000),
                                    width: _selected_color == colors[index] ? 1 : 0,
                                  )
                                ),
                              ),
                            );
                          }
                        ),
                      )

                    ],
                  ),
                ),
              ),

              SizedBox(height: 40.h,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                width: 1.sw,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){context.pop();},
                      child: Container(
                        width: 130.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF685CBF),
                            width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Center(
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF685CBF),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    GestureDetector(
                      onTap: (){context.pop();},
                      child: Container(
                        width: 130.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                          color: Color(0xFF7E72D1),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Center(
                          child: Text(
                            'Create',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),

              SizedBox(height: 20.h,),

            ],
          ),
        ),
      )
    );
  }
}
