import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_project/features/botton_navigation/ui/custom_bottom_navigation_bar.dart';

class CollaborationAgendaScreen extends StatefulWidget {
  CollaborationAgendaScreen({super.key});

  var months = [
    'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'
  ];
  var months_numbers = {
    'January' : 1,
    'February' : 2,
    'March' : 3,
    'April':4,
    'May' : 5,
    'June' : 6,
    'July' : 7,
    'August' : 8,
    'September' : 9,
    'October' : 10,
    'November' : 11,
    'December' : 12
  };
  var hours = [
    '12am', '1am', '2am', '3am', '4am', '5am', '6am', '7am', '8am', '9am', '10am', '11am', '12pm', '1pm', '2pm', '3pm', '4pm', '5pm', '6pm', '7pm', '8pm', '9pm', '10pm', '11pm'
  ];


  var tasks = [
    {
      'month' : 0,
      'day' : 0,
      'tasks' : [
        {'name' : 'Graphic chart' , 'event' : 'ETCODE', 'deadline' : 7, 'color' : 'FDDDC7'},
        {'name' : 'Poster' , 'event' : 'BITCAMP', 'deadline' : 8, 'color' : 'F4FDC7'},
        {'name' : 'Logo' , 'event' : 'ETCODE', 'deadline' : 10, 'color' : 'C7FDD3'},
        {'name' : 'Banner' , 'event' : 'ETCODE', 'deadline' : 17, 'color' : 'FDDDC7'},
        {'name' : 'Stickers' , 'event' : 'BITCAMP', 'deadline' : 20, 'color' : 'C7FDD3'},
        {'name' : 'Stickers' , 'event' : 'BITCAMP', 'deadline' : 10, 'color' : 'C7FDD3'},
        {'name' : 'Banner' , 'event' : 'ETCODE', 'deadline' : 10, 'color' : 'FDDDC7'},
      ]
    }
  ];

  @override
  State<CollaborationAgendaScreen> createState() => _AgendaScreenState();
}

class _AgendaScreenState extends State<CollaborationAgendaScreen> {
  var _selected_month;
  var _selected_day;

  @override
  void initState() {
    super.initState();
    _selected_month = widget.months[0];
    _selected_day = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
            child: Column(
              children: [


                SizedBox(height: 35.h,),
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
                            'My',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Montserrat',
                                fontSize: 18.sp
                            ),
                          ),

                          Text(
                            'Agenda',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Montserrat',
                                fontSize: 28.sp
                            ),
                          ),

                        ],
                      ),
                      SvgPicture.asset('assets/images/icons/calendar.svg', height: 45.h,),
                    ],
                  ),
                ),

                SizedBox(height: 20.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.w),
                  child: Container(
                    width: 1.sw,
                    height: 1.h,
                    color: const Color(0x57000000),
                  ),
                ),

                SizedBox(height: 20.h,),
                Container(
                  width: 1.sw,
                  height: 30.h,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.months.length,
                      itemBuilder: (context, index){
                        return GestureDetector(
                          onTap: (){
                            _selected_month = widget.months[index];
                            setState(() {

                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 25.w),
                            child: Text(
                              '${widget.months[index]}',
                              style: TextStyle(
                                  color: widget.months[index] == _selected_month ? Colors.black : Color(0x80000000),
                                  fontSize: 14.sp,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        );
                      }),
                ),

                SizedBox(height: 30.h,),
                Container(
                  height: 120.h,
                  width: 1.sw,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _getDaysInMonth(2024, widget.months_numbers[_selected_month]!),
                      itemBuilder: (context, index){
                        return GestureDetector(
                          onTap: (){
                            _selected_day = index;
                            setState(() {

                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 10.w),
                            width: 50.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35.r),
                              color: _selected_day == index ? Colors.black : Colors.white,
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              ),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${index+1}',
                                    style: TextStyle(
                                        color: _selected_day == index ? Colors.white : Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 30.sp
                                    ),
                                  ),
                                  SizedBox(height: 5.h,),
                                  Text(
                                    _getDayName(2024, widget.months_numbers[_selected_month]!, index + 1),
                                    style: TextStyle(
                                        color: _selected_day == index ? Colors.white : Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 16.sp
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }
                  ),
                ),

                SizedBox(height: 25.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.w),
                  child: Container(
                    width: 1.sw,
                    height: 1.h,
                    color: const Color(0x57000000),
                  ),
                ),

                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Container(
                      width: 1.sw,
                      height: 290.h,
                      //color: Colors.amber,
                      // child: GridView(
                      //   children: _build_agenda_elements(),
                      // ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: _build_agenda_elements(widget.months_numbers[_selected_month]!, _selected_day),
                          ),
                        ),
                      ),
                    )
                )

              ],
            ),
          );
  }

  int _getDaysInMonth(int year, int month) {
    if (month < 1 || month > 12) {
      throw ArgumentError("Month must be between 1 and 12.");
    }
    DateTime firstDayOfNextMonth = DateTime(year, month + 1, 1);
    DateTime lastDayOfMonth = firstDayOfNextMonth.subtract(Duration(days: 1));
    return lastDayOfMonth.day;
  }

  String _getDayName(int year, int month, int day) {
    // Create a DateTime object
    DateTime date = DateTime(year, month, day);

    // Define a list of short day names
    const dayNames = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

    // Get the weekday (1 = Monday, ..., 7 = Sunday)
    return dayNames[date.weekday % 7];
  }

  List<Widget> _build_agenda_elements(int month, int day){
    List<Widget> elements = [];

    for (int i = 0; i < widget.hours.length; i++){
      elements.add(
          Row(
            children: [
              Container(
                width: 55.w,
                height: 50.h,
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color(0x6E000000),
                            width: 1
                        )
                    )
                ),
                child: Center(
                  child: Text(
                    '${widget.hours[i]}',
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0x6E000000),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w,),
              Row(
                children: _get_hour_tasks(i, month, day),
              )

            ],
          )
      );
      elements.add(SizedBox(height: 5.h,));
    }
    return elements;
  }

  List<Widget> _get_hour_tasks(int hour, int month, int day){
    print(hour);
    print(month);
    print(day);
    List<Widget> tasks = [];
    for (int i = 0; i < widget.tasks.length; i++){

      if (widget.tasks[i]['month'] == month && widget.tasks[i]['day'] == day){
        List<Map<String, dynamic>> tasks_retrieved = widget.tasks[i]['tasks'] as List<Map<String, dynamic>>;

        for (int j = 0; j < tasks_retrieved!.length; i++){
          if (tasks_retrieved[i]['deadline'] == hour){
            tasks.add(
              Container(
                padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 10.w),
                width: 150.w,
                height: 45.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  color: Color(int.parse('FF${tasks_retrieved[i]['color']}', radix: 16)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${tasks_retrieved[i]['name']}',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat',
                          color: Colors.black
                      ),
                    ),

                    Text(
                      '${tasks_retrieved[i]['event']}',
                      style: TextStyle(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat',
                        color: const Color(0x6E000000),
                      ),
                    )
                  ],
                ),
              ),
            );
            tasks.add(SizedBox(width: 15.w,));
          }
        }

      }
    }
    return tasks;
  }

}
