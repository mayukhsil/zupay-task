import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zupay_task/modules/splash_view/splash_controller.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        init: SplashController(),
        builder: (controller){
          return Scaffold(
            body: SafeArea(
                child: Center(child: Icon(Icons.movie))
            )
          );
        }
    );
  }
}
