import 'package:ecommerceapp/core/constant/myimages.dart';
import 'package:ecommerceapp/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OfferImage extends StatelessWidget {
  const OfferImage({super.key});

  @override
  Widget build(BuildContext context) {
    MyServices myservices = Get.find();

    return Container(
      height: 180,
      decoration: BoxDecoration(
          // color: Colors.red,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(60, 0, 0, 0),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 2),
            )
          ]),
      clipBehavior: Clip.hardEdge,
      child: Image.asset(
          myservices.sharedPreferences.getString("lang") == "ar"
              ? MyImages.cashBackAr
              : MyImages.cashBackEn,
          fit: BoxFit.cover),
    );
  }
}
