import 'dart:developer';

import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/core/class/statusrequest.dart';
import 'package:ecommerceapp/core/functions/handlingdata_fu.dart';
import 'package:ecommerceapp/core/services/services.dart';
import 'package:ecommerceapp/data/datasource/remote/auth/login_data.dart';
import 'package:ecommerceapp/view/screen/auth/forgotpassword/forgotpassword_sc.dart';
import 'package:ecommerceapp/view/screen/auth/register_sc.dart';
import 'package:ecommerceapp/view/screen/homepage.dart';
import 'package:ecommerceapp/core/functions/customsnackbar_fu.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  logIn();
  goToRegister();
  goToForgotPassword();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool isPasswordHidden = true;

  StatusRequest statusRequest = StatusRequest.none;
  LoginData logindata = LoginData(Get.find<Crud>());
  MyServices myservices = Get.find();

  showPassword() {
    isPasswordHidden = isPasswordHidden == true ? false : true;
    update();
  }

  @override
  logIn() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await logindata.postdata(email.text, password.text);
      statusRequest = handlingData(response);
      if (statusRequest == StatusRequest.success) {
        if (response['status'] == 'success') {
          myservices.sharedPreferences
              .setString("id", response['data']['users_id'].toString());
          myservices.sharedPreferences
              .setString("username", response['data']['users_name']);
          myservices.sharedPreferences
              .setString("email", response['data']['users_email']);
          myservices.sharedPreferences
              .setString("phone", response['data']['users_phone']);
          myservices.sharedPreferences.setString("step", "loginFinished");

          Get.offAll(() => HomePage(), transition: Transition.upToDown);
        } else {
          customSnackBar("57".tr, "58".tr);
          statusRequest = StatusRequest.noDataFailure;
        }
      }
      update();
    } else {}
  }

  @override
  goToRegister() {
    Get.offAll(() => Register(), transition: Transition.downToUp);
  }

  @override
  goToForgotPassword() {
    Get.to(() => ForgotPassword(), transition: Transition.rightToLeft);
  }

  @override
  void onInit() {
    FirebaseMessaging.instance.getToken().then((value) {
      log("$value");
      // ignore: unused_local_variable
      String? token = value;
    });
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    Get.delete<LoginControllerImp>(force: true);

    super.dispose();
  }
}
