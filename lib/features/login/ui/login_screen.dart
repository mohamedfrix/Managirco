import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_project/features/login/bloc/login_bloc.dart';
import 'package:mobile_project/features/login/ui/widgets/custom_toggle_button.dart';
import 'package:mobile_project/resources/color_palette.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  bool rememberMe = false;
  var _username_controller = TextEditingController();
  var _password_controller = TextEditingController();
  var _form_key = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginScreenSuccess){
          //print('logged in : $rememberMe');
          context.push('/home');
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

                //SizedBox(height: 20.h,),
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
                          'Hello!',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Theme.of(context).primaryColorDark,
                            fontSize: 26.sp,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Welcome Back',
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

                      Form(
                        key: _form_key,
                        child: Column(
                          children: [
                            SizedBox(height: 45.h,),
                            TextFormField(
                              controller: _username_controller,
                              decoration: InputDecoration(
                                labelText: 'Username',
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(top: 12.h, bottom: 12.h, left: 0, right: 0),
                                  child: SvgPicture.asset('assets/images/icons/user_icon.svg', height: 5.h,),
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
                                  return 'please enter yor username';
                                }
                              },
                            ),

                            SizedBox(height: 45.h,),

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

                              },
                            ),

                          ],
                        ),

                      ),

                      SizedBox(height: 30.h,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Remember me',
                            style: TextStyle(
                              color: Theme.of(context).primaryColorDark,
                              fontSize: 11.sp,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          CustomToggleButton(height: 20, width: 40, isToggled: rememberMe,),
                        ],
                      ),

                      SizedBox(height: 40.h,),

                      BlocBuilder<LoginBloc, LoginState>(
                        builder: (context, state){
                          if (state is LoginScreenWrongCredentials){
                            return Text(
                              'incorrect username or password',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.red[900],
                              ),
                            );
                          }

                          else if (state is LoginLoading){
                            return CircularProgressIndicator(
                              color: Theme.of(context).primaryColorDark,
                            );
                          }

                          else{
                            return SizedBox(height: 10.h,);
                          }
                        }
                      ),

                      SizedBox(height: 40.h,),


                      GestureDetector(

                        onTap: (){
                          if (_form_key.currentState?.validate() ?? false){
                            BlocProvider.of<LoginBloc>(context).add(
                                LoginScreenRequestEvent(
                                    username: _username_controller.text,
                                    password: _password_controller.text,
                                    rememberMe: rememberMe
                                )
                            );
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

                      SizedBox(height: 20.h,),

                      GestureDetector(
                        onTap: (){
                          context.push('/signup');
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

                      SizedBox(height: 40.h,),

                      GestureDetector(
                        onTap: (){},
                        child: Text(
                          'I forgot my password',
                          style: TextStyle(
                            color: Theme.of(context).primaryColorDark,
                            fontFamily: "Montserrat",
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      )


                    ],
                  ),

                ),

              ],
            ),
          ),
        ),
    );
  }
}
