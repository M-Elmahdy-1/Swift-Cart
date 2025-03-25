import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/core/class/statusrequest.dart';
import 'package:ecommerceapp/core/functions/handlingdata_fu.dart';
import 'package:ecommerceapp/data/datasource/remote/auth/verificationregister_data.dart';
import 'package:ecommerceapp/view/screen/auth/successregister_sc.dart';
import 'package:ecommerceapp/core/functions/customsnackbar_fu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerificationRegisterController extends GetxController {
  goToSuccessRegister();
}

class VerificationRegisterControllerImp extends VerificationRegisterController {
  late TextEditingController verifycode;
  String? email;
  StatusRequest statusRequest = StatusRequest.none;

  VerificationRegisterData verificationRegisterData =
      VerificationRegisterData(Get.find<Crud>());

  @override
  goToSuccessRegister() async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await verificationRegisterData.postdata(email!, verifycode.text);
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == 'success') {
        Get.offAll(() => SuccessRegister(), transition: Transition.rightToLeft);
      } else {
        customSnackBar("61".tr, "62".tr);
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
