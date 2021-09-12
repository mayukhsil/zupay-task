import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zupay_task/modules/login_view/login_controller.dart';
import 'package:zupay_task/styles/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: LoginController(),
        builder: (controller){
          return SafeArea(
              child: Scaffold(
                body: Padding(
                  padding: EdgeInsets.all(20.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Hi,',
                        style: AppTextStyles.s6(fontType: FontType.MEDIUM,color: Colors.white).copyWith(fontSize: 32.sp),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text('Welcome to CineBud!',
                        style: AppTextStyles.s5(fontType: FontType.MEDIUM,color: Colors.white),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      GestureDetector(
                        onTap: () async {
                          var user = await controller.signInWithGoogle();
                          controller.checkLogin(user);
                        },
                        child: Container(
                          height: 50.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade500,
                            borderRadius: BorderRadius.circular(15.sp)
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.wb_cloudy),
                                SizedBox(width: 15.w,),
                                Text('Login with Google',
                                  style: AppTextStyles.s3(color: Colors.white,fontType: FontType.SEMI_BOLD),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
          );
        }
    );
  }
}
