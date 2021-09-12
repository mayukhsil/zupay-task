import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zupay_task/modules/splash_view/splash_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = Get.size;
    ScreenUtil.init(
        BoxConstraints(
            maxHeight: screenSize.height, maxWidth: screenSize.width),
        designSize: Size(screenSize.width, screenSize.height));
    return GetMaterialApp(
      title: 'Zupay Task',
      debugShowCheckedModeBanner: false,
      enableLog: true,
      theme: ThemeData.dark(),
      home: SplashView(),
      builder: EasyLoading.init(),
    );
  }
}
