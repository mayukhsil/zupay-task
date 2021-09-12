import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:zupay_task/app/exceptions.dart';
import 'package:zupay_task/modules/home_view/home_view.dart';

class LoginController extends GetxController {

  Future<UserCredential> signInWithGoogle() async {
      EasyLoading.show(status: 'Loading');
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  checkLogin(UserCredential user){
    if(user.user!.emailVerified){
      Preference.setString('token', user.credential!.token.toString());
      Get.to(() => HomeView());
      EasyLoading.dismiss();
    }
    else {
      EasyLoading.showToast('Couldn\'t login');
      EasyLoading.dismiss();
    }
  }

}