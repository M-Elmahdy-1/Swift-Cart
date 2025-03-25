import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/core/class/statusrequest.dart';
import 'package:ecommerceapp/core/functions/customsnackbar_fu.dart';
import 'package:ecommerceapp/core/functions/handlingdata_fu.dart';
import 'package:ecommerceapp/data/datasource/remote/forgotpassword/restpassword_data.dart';
import 'package:ecommerceapp/view/screen/auth/forgotpassword/successresetpassword_sc.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  String? email;
  late TextEditingController password;
  late TextEditingController confirmPassword;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  StatusRequest statusRequest = StatusRequest.none;
  bool isPasswordHidden = true;

  ResetPasswordData resetPasswordData = ResetPasswordData(Get.find<Crud>());

  showPassword() {
    isPasswordHidden = isPasswordHidden == true ? false : true;
    update();
  }

  @override
  goToSuccessResetPassword() async {
    if (password.text != confirmPassword.text) {
      return customSnackBar("67".tr, "68".tr);
    }
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await resetPasswordData.postdata(email!, password.text);
      statusRequest = handlingData(response);
      if (statusRequest == StatusRequest.success) {
        if (response['status'] == 'success') {
          Get.offAll(() => SuccessResetPassword(),
              transition: Transition.upToDown);
        } else {
          // customSnackBar("69".tr, "70".tr);
          statusRequest = StatusRequest.noDataFailure;
        }
      }
      update();
    } else {}
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    password = TextEditingController();
    confirmPassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    confirmPassword.dispose();
    super.dispose();
  }
}
