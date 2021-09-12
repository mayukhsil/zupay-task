import 'package:get/get.dart';
import 'package:zupay_task/app/exceptions.dart';
import 'package:zupay_task/modules/login_view/login_view.dart';

class SplashController extends GetxController {

  @override
  void onInit() async {
    await Preference.load();
    if(Preference.getString('token') != null){
      Future.delayed(Duration(seconds: 2)).then((value) => Get.to(() => LoginView()));
    }
    super.onInit();
  }

}