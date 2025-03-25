import 'package:ecommerceapp/core/constant/mycolors.dart';
import 'package:ecommerceapp/core/constant/myfonts.dart';
import 'package:ecommerceapp/core/functions/textstyle_fu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

customSnackBar(String title, String message) {
  Get.snackbar(
    margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    icon: Icon(
      Icons.warning_rounded,
      color: MyColors.whiteColor,
      size: 35,
    ),
    titleText: Text(
      title,
      style: TextStyle(
          color: MyColors.whiteColor,
          fontSize: fontSize(20, 20),
          fontFamily:
              fontFamily(MyFonts.cairoSemiBold, MyFonts.montserratBold)),
    ),
    messageText: Text(message,
        style: TextStyle(
            color: MyColors.whiteColor,
            fontSize: fontSize(15, 15),
            fontFamily:
                fontFamily(MyFonts.cairoRegular, MyFonts.montserratMedium))),
    "",
    "",
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: MyColors.primaryColor,
    colorText: Colors.white,
  );
}
