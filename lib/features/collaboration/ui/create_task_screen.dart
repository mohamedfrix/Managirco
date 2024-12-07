import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CreateTaskScreen extends StatefulWidget {
  CreateTaskScreen({super.key});

  @override
  State<CreateTaskScreen> createState() => _CreateTaskScreenState();
}

class _CreateTaskScreenState extends State<CreateTaskScreen> {
  var crieerias = [
    'Should be a good designer like Moulay',
    'Should be a good designer like Mohamed',
    'Should be a good designer like Bouabdelli',
  ];

  var resources = [
    'Resource 1',
    'Resource 2',
    'Resource 3',
  ];

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
                          'Create Collaboration',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontSize: 18.sp,
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
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Text(
                            'New Task',
                            style: TextStyle(
                                color: const Color(0xFF3A346A),
                                fontFamily: 'Montserrat',
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset('assets/images/icons/task.svg', height: 45.h,),
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
                        //controller: _event_name_controller,
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Container(
                    width: 1.sw,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Assign Supervisor:',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        SizedBox(height: 15.h,),
                        Container(
                          width: 190.w,
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
                                'Add a Supervisor',
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

                SizedBox(height: 35.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Container(
                    width: 1.sw,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 1.sw,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Assign Members:',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              GestureDetector(
                                onTap: (){},
                                child: Text(
                                  '+ Add',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Montserrat',
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                        SizedBox(height: 15.h,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          width: 1.sw,
                          height: 60.h,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder: (context, index){
                              return Container(
                                margin: EdgeInsets.symmetric(horizontal: 0.w),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SvgPicture.asset('assets/images/icons/account.svg', ),
                                ),
                              );
                            }
                          ),
                        )
                      ],
                    ),
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
                            'Due date:',
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
                              //controller: _event_start_date_controller,
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
                        //controller: _event_name_controller,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 11.sp,
                            color: const Color(0xFF8F8F8F),
                            fontWeight: FontWeight.w400
                        ),
                        cursorColor: const Color(0xFF685CBF),
                        decoration: InputDecoration(
                          hintText: 'Enter Description...',
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

                SizedBox(height: 40.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Container(
                    width: 1.sw,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Acceptance criteria:',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Montserrat',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            GestureDetector(
                              onTap: (){},
                              child: Text(
                                '+ Add',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: 30.h,),
                        Builder(builder: (context){
                          List<Widget> elemnets = [];
                          if (crieerias.isNotEmpty){
                            for (int i = 0; i < crieerias.length; i++){
                              elemnets.add(
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: (){
                                        crieerias.remove(crieerias[i]);
                                        setState(() {

                                        });
                                      },
                                      child: SvgPicture.asset('assets/images/icons/delete.svg', height: 15.h,),
                                    ),
                                    SizedBox(width: 15.w,),
                                    SvgPicture.asset('assets/images/icons/validate_green.svg'),
                                    SizedBox(width: 10.w,),
                                    Container(
                                      width: 250.w,
                                      child: Text(
                                        '${crieerias[i]}',
                                        style: TextStyle(
                                          color: Color(0x85000000),
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Montserrat',
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              );
                              elemnets.add(SizedBox(height: 20.h,));
                            }
                            return Column(
                              children: elemnets,
                            );
                          }
                          return SizedBox();
                        }),

                      ],
                    ),
                  ),
                ),

                SizedBox(height: 40.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Container(
                    width: 1.sw,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Attach resources:',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Montserrat',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            GestureDetector(
                              onTap: (){},
                              child: Text(
                                '+ Add',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: 15.h,),
                        Builder(builder: (context){
                          List<Widget> elemnets = [];
                          if (resources.isNotEmpty){
                            for (int i = 0; i < resources.length; i++){
                              elemnets.add(
                                  Container(
                                    width: 1.sw,
                                    padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20.r),
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 1.5
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset('assets/images/icons/drive.svg'),
                                        SizedBox(width: 30.w,),
                                        ConstrainedBox(
                                          constraints: BoxConstraints(
                                            maxWidth: 180.w
                                          ),
                                          child: Text(
                                            '${resources[i]}',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.sp,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: (){
                                            resources.remove(resources[i]);
                                            setState(() {

                                            });
                                          },
                                          child: SvgPicture.asset('assets/images/icons/trash.svg', height: 28.h,),
                                        )

                                      ],
                                    ),
                                  )
                              );
                              elemnets.add(SizedBox(height: 20.h,));
                            }
                            return Column(
                              children: elemnets,
                            );
                          }
                          return SizedBox();
                        }),
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
