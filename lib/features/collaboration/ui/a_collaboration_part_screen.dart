import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_project/features/collaboration/bloc/collaboration_pages_bloc/collaboration_pages_bloc.dart';
import 'package:mobile_project/features/collaboration/ui/widgets/collaboration_agenda_screen.dart';
import 'package:mobile_project/features/collaboration/ui/widgets/collaboration_chat_screen.dart';
import 'package:mobile_project/features/collaboration/ui/widgets/collaboration_submissions_screen.dart';
import 'package:mobile_project/features/collaboration/ui/widgets/collaboration_tasks_screen.dart';

class ACollaborationPartScreen extends StatefulWidget {
  ACollaborationPartScreen({super.key, required this.collaborationName});

  final collaborationName;
  final tasks = [
    {'name' : 'Graphic Chart', 'state' : 0, 'color' : 'C7FDD3', 'deadlineDate' : '7 Dec 2024', 'deadlineTime' : '12 AM', 'attachementsNum' : 2, 'membersNum': 4, 'validated' : true},
    {'name' : 'Poster', 'state' : 1, 'color' : 'FDDDC7', 'deadlineDate' : '7 Dec 2024', 'deadlineTime' : '12 AM', 'attachementsNum' : 2, 'membersNum': 4, 'validated' : false},
    {'name' : 'Banner', 'state' : 2, 'color' : 'F4FDC7', 'deadlineDate' : '7 Dec 2024', 'deadlineTime' : '12 AM', 'attachementsNum' : 2, 'membersNum': 4, 'validated' : false},

    {'name' : 'Graphic Chart', 'state' : 0, 'color' : 'C7FDD3', 'deadlineDate' : '7 Dec 2024', 'deadlineTime' : '12 AM', 'attachementsNum' : 2, 'membersNum': 4, 'validated' : true},
    {'name' : 'Poster', 'state' : 1, 'color' : 'FDDDC7', 'deadlineDate' : '7 Dec 2024', 'deadlineTime' : '12 AM', 'attachementsNum' : 2, 'membersNum': 4, 'validated' : false},
    {'name' : 'Banner', 'state' : 2, 'color' : 'F4FDC7', 'deadlineDate' : '7 Dec 2024', 'deadlineTime' : '12 AM', 'attachementsNum' : 2, 'membersNum': 4, 'validated' : false},
  ];

  int selectedTapIndex = 0;

  @override
  State<ACollaborationPartScreen> createState() => _ACollaborationPartScreenState();
}

class _ACollaborationPartScreenState extends State<ACollaborationPartScreen> {


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
                        '${widget.collaborationName}',
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
              Container(
                width: 1.sw,
                height: 50.h,
                decoration: const BoxDecoration(
                  color: Colors.white
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: (){
                          BlocProvider.of<CollaborationPagesBloc>(context).add(
                            CollaborationPagesSwitchPage(currentPageIndex: 0),
                          );
                        },
                        child: BlocBuilder<CollaborationPagesBloc, CollaborationPagesState>(builder: (context, state){
                          if (state is CollaborationPagesInitial){
                            return Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                              height: 50.h,
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                        //color: Color(0xFF685CBF),
                                          color: state.currentPageIndex == 0 ? Color(0xFF685CBF) : Color(0x00FFFFFF),
                                          width: 3
                                      )
                                  )
                              ),
                              child: Center(
                                child: Text(
                                  'Chat',
                                  style: TextStyle(
                                      color: state.currentPageIndex== 0 ? Colors.black  : const Color(0x7F3A336E),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Montserrat'
                                  ),
                                ),
                              ),
                            );
                          }
                          return SizedBox();
                        })
                    ),
                    GestureDetector(
                        onTap: (){
                          BlocProvider.of<CollaborationPagesBloc>(context).add(
                            CollaborationPagesSwitchPage(currentPageIndex: 1),
                          );
                        },
                        child: BlocBuilder<CollaborationPagesBloc, CollaborationPagesState>(builder: (context, state){
                          if (state is CollaborationPagesInitial){
                            return Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                              height: 50.h,
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                        //color: Color(0xFF685CBF),
                                          color: state.currentPageIndex == 1 ? Color(0xFF685CBF) : Color(0x00FFFFFF),
                                          width: 3
                                      )
                                  )
                              ),
                              child: Center(
                                child: Text(
                                  'Tasks',
                                  style: TextStyle(
                                      color: state.currentPageIndex== 1 ? Colors.black  : const Color(0x7F3A336E),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Montserrat'
                                  ),
                                ),
                              ),
                            );
                          }
                          return SizedBox();
                        })
                    ),
                    GestureDetector(
                        onTap: (){
                          BlocProvider.of<CollaborationPagesBloc>(context).add(
                            CollaborationPagesSwitchPage(currentPageIndex: 2),
                          );
                        },
                        child: BlocBuilder<CollaborationPagesBloc, CollaborationPagesState>(builder: (context, state){
                          if (state is CollaborationPagesInitial){
                            return Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                              height: 50.h,
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                        //color: Color(0xFF685CBF),
                                          color: state.currentPageIndex == 2 ? Color(0xFF685CBF) : Color(0x00FFFFFF),
                                          width: 3
                                      )
                                  )
                              ),
                              child: Center(
                                child: Text(
                                  'Agenda',
                                  style: TextStyle(
                                      color: state.currentPageIndex== 2 ? Colors.black  : const Color(0x7F3A336E),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Montserrat'
                                  ),
                                ),
                              ),
                            );
                          }
                          return SizedBox();
                        })
                    ),
                    GestureDetector(
                      onTap: (){
                        BlocProvider.of<CollaborationPagesBloc>(context).add(
                          CollaborationPagesSwitchPage(currentPageIndex: 3),
                        );
                      },
                      child: BlocBuilder<CollaborationPagesBloc, CollaborationPagesState>(builder: (context, state){
                        if (state is CollaborationPagesInitial){
                          return Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                            height: 50.h,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                      //color: Color(0xFF685CBF),
                                        color: state.currentPageIndex == 3 ? Color(0xFF685CBF) : Color(0x00FFFFFF),
                                        width: 3
                                    )
                                )
                            ),
                            child: Center(
                              child: Text(
                                'Submissions',
                                style: TextStyle(
                                    color: state.currentPageIndex== 3 ? Colors.black  : const Color(0x7F3A336E),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Montserrat'
                                ),
                              ),
                            ),
                          );
                        }
                        return SizedBox();
                      })
                    ),

                  ],
                ),
              ),
              BlocBuilder<CollaborationPagesBloc, CollaborationPagesState>(builder: (context, state){
                if(state is CollaborationPagesInitial){
                  if (state.currentPageIndex == 0){
                    return CollaborationChatScreen();

                  }
                  else if (state.currentPageIndex == 1){
                    return CollaborationTasksScreen(tasks: widget.tasks);
                  }
                  else if (state.currentPageIndex == 3){
                    return CollaborationSubmissionsScreen();
                  }
                  else if (state.currentPageIndex == 2){
                    return CollaborationAgendaScreen();
                  }
                }
                return SizedBox();
              }),
            ],
          ),
        ),
      )
    );
  }

}
