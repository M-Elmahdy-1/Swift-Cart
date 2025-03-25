import 'dart:developer';

import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/core/class/statusrequest.dart';
import 'package:ecommerceapp/core/functions/handlingdata_fu.dart';
import 'package:ecommerceapp/core/services/services.dart';
import 'package:ecommerceapp/data/datasource/remote/homepage_data.dart';
import 'package:get/get.dart';

abstract class HomePageController extends GetxController {
  initialData();
  getData();
}

class HomePageControllerImp extends HomePageController {
  MyServices myservices = Get.find();
  StatusRequest statusRequest = StatusRequest.none;
  HomePageData homePageData = HomePageData(Get.find<Crud>());

  String? username;

  @override
  initialData() {
    username = myservices.sharedPreferences.getString("username");
  }

  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await homePageData.getData();
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == 'success') {
        log("testcontoller $response");
      } else {
        statusRequest = StatusRequest.noDataFailure;
      }
    }
    update();
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}
