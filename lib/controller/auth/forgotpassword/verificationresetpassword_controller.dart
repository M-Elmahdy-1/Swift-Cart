import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/core/class/statusrequest.dart';
import 'package:ecommerceapp/core/functions/customsnackbar_fu.dart';
import 'package:ecommerceapp/core/functions/handlingdata_fu.dart';
import 'package:ecommerceapp/data/datasource/remote/forgotpassword/verificationresetpassword_data.dart';
import 'package:ecommerceapp/view/screen/auth/forgotpassword/resetpassword_sc.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerificationResetPasswordController extends GetxController {
  goToResetPassword();
}

class VerificationResetPasswordControllerImp
    extends VerificationResetPasswordController {
  late TextEditingController verifycode;
  String? email;
  StatusRequest statusRequest = StatusRequest.none;

  VerificationResetPasswordData verificationResetPasswordData =
      VerificationResetPasswordData(Get.find<Crud>());

  @override
  goToResetPassword() async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await verificationResetPasswordData.postdata(email!, verifycode.text);
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == 'success') {
        Get.off(() => ResetPassword(),
            transition: Transition.rightToLeft, arguments: {"email": email});
      } else {
        customSnackBar("63".tr, "64".tr);
        statusRequest = StatusRequest.noDataFailure;
      }
    }
    update();
  }

  @override
  void onInit() {
    verifycode = TextEditingController();
    email = Get.arguments['email'];
    super.onInit();
  }

  @override
  void dispose() {
    verifycode.dispose();
    super.dispose();
  }
}
