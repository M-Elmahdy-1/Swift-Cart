import 'package:ecommerceapp/controller/auth/forgotpassword/forgotpassword_controller.dart';
import 'package:ecommerceapp/controller/auth/forgotpassword/resetpassword_controller.dart';
import 'package:ecommerceapp/controller/auth/forgotpassword/successresetpassword_controller.dart';
import 'package:ecommerceapp/controller/auth/forgotpassword/verificationresetpassword_controller.dart';
import 'package:ecommerceapp/controller/auth/login_controller.dart';
import 'package:ecommerceapp/controller/auth/register_controller.dart';
import 'package:ecommerceapp/controller/auth/successregister_controller.dart';
import 'package:ecommerceapp/controller/auth/verificationregister_controller.dart';
import 'package:ecommerceapp/controller/homepage_controller.dart';
import 'package:ecommerceapp/controller/language_controller.dart';
import 'package:ecommerceapp/controller/onboarding_controller.dart';
import 'package:ecommerceapp/core/class/crud.dart';
import 'package:get/get.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    // Language Page
    Get.lazyPut(() => LanguageControllerImp(), fenix: true);
    // OnBoarding Page
    Get.lazyPut(() => OnBoardingControllerImp(), fenix: true);
    // Login Page
    Get.lazyPut(() => LoginControllerImp(), fenix: true);
    // Register Page
    Get.lazyPut(() => RegisterControllerImp(), fenix: true);
    // Success Register Page
    Get.lazyPut(() => SuccessRegisterControllerImp(), fenix: true);
    // Verification Register Page
    Get.lazyPut(() => VerificationRegisterControllerImp(), fenix: true);
    // Forgot Password Page
    Get.lazyPut(() => ForgotPasswordControllerImp(), fenix: true);
    // Reset Password Page
    Get.lazyPut(() => ResetPasswordControllerImp(), fenix: true);
    // Success Reset Password Page
    Get.lazyPut(() => SuccessResetPasswordControllerImp(), fenix: true);
    // Verification Reset Password Page
    Get.lazyPut(() => VerificationResetPasswordControllerImp(), fenix: true);
    // HomePage
    Get.lazyPut(() => HomePageControllerImp(), fenix: true);
    // Crud Page
    Get.put(Crud());
  }
}
