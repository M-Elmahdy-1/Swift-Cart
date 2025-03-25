// ignore_for_file: unused_import
import 'package:ecommerceapp/core/constant/mypages.dart';
import 'package:ecommerceapp/test.dart';
import 'package:ecommerceapp/core/middleware/mymiddleware.dart';
import 'package:ecommerceapp/view/screen/auth/forgotpassword/forgotpassword_sc.dart';
import 'package:ecommerceapp/view/screen/auth/forgotpassword/successresetpassword_sc.dart';
import 'package:ecommerceapp/view/screen/auth/login_sc.dart';
import 'package:ecommerceapp/view/screen/auth/register_sc.dart';
import 'package:ecommerceapp/view/screen/auth/forgotpassword/resetpassword_sc.dart';
import 'package:ecommerceapp/view/screen/auth/forgotpassword/verificationresetpassword_sc.dart';
import 'package:ecommerceapp/view/screen/auth/successregister_sc.dart';
import 'package:ecommerceapp/view/screen/auth/verificationregister_sc.dart';
import 'package:ecommerceapp/view/screen/homepage.dart';
import 'package:ecommerceapp/view/screen/language_sc.dart';
import 'package:ecommerceapp/view/screen/onboarding_sc.dart';
import 'package:ecommerceapp/view/testview.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  // TEST
  // GetPage(name: "/", page: () => const TestView()),
  // Language
  GetPage(
      name: "/",
      page: () => const MyLanguage(),
      middlewares: [MyMiddleWare()]), //, middlewares: [MyMiddleWare()]
  // OnBoarding
  GetPage(name: MyPages.onBoarding, page: () => const OnBoarding()),
  // HomePage
  GetPage(name: MyPages.homePage, page: () => const HomePage()),
  // Auth
  GetPage(name: MyPages.login, page: () => const LogIn()),
  GetPage(name: MyPages.register, page: () => Register()),
  GetPage(
      name: MyPages.verificationRegister,
      page: () => const VerificationRegister()),
  GetPage(name: MyPages.successRegister, page: () => const SuccessRegister()),
  // Forgot Password
  GetPage(name: MyPages.forgotPassword, page: () => const ForgotPassword()),
  GetPage(name: MyPages.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: MyPages.verificationResetPassword,
      page: () => const VerificationResetPassword()),
  GetPage(
      name: MyPages.successResetPassword,
      page: () => const SuccessResetPassword()),
];
