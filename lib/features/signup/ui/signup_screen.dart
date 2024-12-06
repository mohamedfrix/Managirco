import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_project/features/signup/bloc/signup_bloc.dart';

import '../../../resources/color_palette.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  var _form_key = GlobalKey<FormState>();
  var _email_controller = TextEditingController();
  var _name_controller = TextEditingController();
  var _password_controller = TextEditingController();
  var _confirm_password_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupBloc, SignupState>(
      listener: (context, state) {
        if (state is SignupScreenSuccess){
          context.pop();
        }
      },
      child: Scaffold(
          backgroundColor: Theme.of(context).primaryColorDark,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Container(
                    //color: Colors.white,
                    width: 1.sw,
                    height: 70.h,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: (){
                          context.pop();
                        },
                        child: SvgPicture.asset(
                          'assets/images/icons/arrow_back.svg',
                          width: 25.w,
                        ),
                      ),
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  width: 1.sw,
                  height: 700.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.r),
                        topRight:  Radius.circular(15.r),
                      )
                  ),
                  child: Column(
                    children: [

                      SizedBox(height: 30.h,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Theme.of(context).primaryColorDark,
                              fontSize: 26.sp,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                      SizedBox(height: 8.h,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Enter your credentials to continue',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Theme.of(context).primaryColorDark,
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),

                      SizedBox(height: 30.h,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: (){},
                            child: Container(
                              width: 110.w,
                              height: 65.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12.r),
                                border: Border.all(
                                  color: Color(0xFFD0CAF9),
                                  width: 1,
                                ),
                              ),
                              child: Center(
                                child: SvgPicture.asset('assets/images/icons/facebook.svg', width: 30.w,),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'This featue is not available for now',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  duration: Duration(seconds: 3),
                                  backgroundColor: Theme.of(context).primaryColorDark,
                                ),
                              );
                            },
                            child: Container(
                              width: 110.w,
                              height: 65.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12.r),
                                border: Border.all(
                                  color: Color(0xFFD0CAF9),
                                  width: 1,
                                ),
                              ),
                              child: Center(
                                child: SvgPicture.asset('assets/images/icons/facebook.svg', width: 30.w,),
                              ),
                            ),
                          )
                        ],
                      ),

                      SizedBox(height: 20.h,),
                      Text(
                        'Or, register with email',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontFamily: 'Montserrat',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600
                        ),
                      ),

                      SizedBox(height: 15.h,),

                      BlocBuilder<SignupBloc, SignupState>(builder: (context, state){

                        if (state is SignupLoading){
                          return Container(
                            height: 300.h,
                            width: 1.sw,
                            child: Center(
                              child: CircularProgressIndicator(
                                color: Theme.of(context).primaryColorDark,
                              ),
                            ),
                          );
                        }
                        else{
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            child: Form(
                              key: _form_key,
                              child: Column(
                                children: [
                                  //SizedBox(height: 45.h,),
                                  TextFormField(
                                    controller: _email_controller,
                                    decoration: InputDecoration(
                                      labelText: 'Email',
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.only(top: 12.h, bottom: 12.h, left: 0, right: 0),
                                        child: SvgPicture.asset('assets/images/icons/mail_icon.svg', height: 5.h,),
                                      ),

                                      labelStyle: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 11.sp,
                                          color: Theme.of(context).primaryColorDark,
                                          fontWeight: FontWeight.w500
                                      ),
                                      enabledBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFD0CAF9),
                                            width: 1.5
                                        ),
                                      ),

                                      focusedBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFD0CAF9),
                                            width: 1.5
                                        ),
                                      ),

                                    ),
                                    validator: (value){
                                      if (value == null || value.trim().length == 0){
                                        return 'please enter yor email';
                                      }
                                    },
                                  ),

                                  SizedBox(height: 15.h,),

                                  TextFormField(

                                    controller: _name_controller,
                                    decoration: InputDecoration(
                                      labelText: 'Full name',
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.only(top: 12.h, bottom: 12.h, left: 0, right: 0),
                                        child: SvgPicture.asset('assets/images/icons/lock_icon.svg', height: 5.h,),
                                      ),
                                      labelStyle: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 11.sp,
                                          color: Theme.of(context).primaryColorDark,
                                          fontWeight: FontWeight.w500
                                      ),
                                      enabledBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFD0CAF9),
                                            width: 1.5
                                        ),
                                      ),

                                      focusedBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFD0CAF9),
                                            width: 1.5
                                        ),
                                      ),

                                    ),
                                    validator: (value){
                                      if (value == null || value.trim().length == 0){
                                        return 'please enter you full name';
                                      }

                                    },
                                  ),

                                  SizedBox(height: 15.h,),

                                  TextFormField(

                                    controller: _password_controller,
                                    decoration: InputDecoration(
                                      labelText: 'Password',
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.only(top: 12.h, bottom: 12.h, left: 0, right: 0),
                                        child: SvgPicture.asset('assets/images/icons/lock_icon.svg', height: 5.h,),
                                      ),
                                      suffixIcon: GestureDetector(
                                        onTap: () {
                                          print('show password');
                                        },
                                        child: Icon(Icons.remove_red_eye_rounded, color: ColorPalette.primaryLightL,),
                                      ),

                                      labelStyle: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 11.sp,
                                          color: Theme.of(context).primaryColorDark,
                                          fontWeight: FontWeight.w500
                                      ),
                                      enabledBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFD0CAF9),
                                            width: 1.5
                                        ),
                                      ),

                                      focusedBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFD0CAF9),
                                            width: 1.5
                                        ),
                                      ),

                                    ),
                                    validator: (value){
                                      if (value == null || value.trim().length == 0){
                                        return 'please enter your password';
                                      }
                                      if (value.trim().length < 5){
                                        return 'please choose a stronger password';
                                      }

                                    },
                                  ),

                                  SizedBox(height: 15.h,),

                                  TextFormField(

                                    controller: _confirm_password_controller,
                                    decoration: InputDecoration(
                                      labelText: 'Confirm password',
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.only(top: 12.h, bottom: 12.h, left: 0, right: 0),
                                        child: SvgPicture.asset('assets/images/icons/lock_icon.svg', height: 5.h,),
                                      ),
                                      suffixIcon: GestureDetector(
                                        onTap: () {
                                          print('show password');
                                        },
                                        child: Icon(Icons.remove_red_eye_rounded, color: ColorPalette.primaryLightL,),
                                      ),

                                      labelStyle: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 11.sp,
                                          color: Theme.of(context).primaryColorDark,
                                          fontWeight: FontWeight.w500
                                      ),
                                      enabledBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFD0CAF9),
                                            width: 1.5
                                        ),
                                      ),

                                      focusedBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFD0CAF9),
                                            width: 1.5
                                        ),
                                      ),

                                    ),
                                    validator: (value){
                                      if (value == null || value.trim().length == 0){
                                        return 'please confirm your password';
                                      }
                                      else if (value.trim() != _password_controller.text){
                                        return 'please confirm your password correctly';
                                      }

                                    },
                                  ),

                                ],
                              ),

                            ),
                          );
                        }

                      }),



                      Spacer(),

                      GestureDetector(
                        onTap: (){
                          if(_form_key.currentState?.validate() ?? false){
                            BlocProvider.of<SignupBloc>(context).add(
                              SignupScreenRequestEvent(
                                  email: _email_controller.text,
                                  name: _name_controller.text,
                                  password: _password_controller.text
                              ));
                          }
                        },
                        child: Container(
                          height: 52.h,
                          width: 1.sw,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(26.r),
                              color: Theme.of(context).primaryColor
                          ),
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 10.h,),

                      GestureDetector(
                        onTap: (){
                          context.pop();
                        },
                        child: Container(
                          height: 52.h,
                          width: 1.sw,
                          margin: EdgeInsets.only(bottom: 15.h),
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
                              "I don't have an account",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                )

              ],
            ),
          )
        ),
    );
  }
}
