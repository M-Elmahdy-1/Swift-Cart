import 'package:ecommerceapp/controller/language_controller.dart';
import 'package:ecommerceapp/core/constant/myfonts.dart';
import 'package:ecommerceapp/core/constant/myimages.dart';
import 'package:ecommerceapp/core/functions/textstyle_fu.dart';
import 'package:ecommerceapp/view/widget/language/customelanguagebutton_wd.dart';
import 'package:ecommerceapp/view/widget/mainlogo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyLanguage extends StatelessWidget {
  const MyLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageControllerImp languageControllerImp =
        Get.find<LanguageControllerImp>();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(MyImages.languagePageBackground),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(flex: 1),
                  MainLogo(),
                  SizedBox(height: 10),
                  Text("1".tr,
                      style: TextStyle(
                          fontSize: fontSize(22, 21),
                          fontFamily: fontFamily(
                              MyFonts.cairoRegular, MyFonts.montserratMedium),
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 25),
                  CustomeLanguageButton(
                      text: "2".tr,
                      onPressed: () {
                        languageControllerImp.goToOnBoardingArabic();
                      }),
                  SizedBox(height: 15),
                  CustomeLanguageButton(
                      text: "3".tr,
                      onPressed: () {
                        languageControllerImp.goToOnBoardingEnglish();
                      }),
                  Spacer(flex: 3),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
