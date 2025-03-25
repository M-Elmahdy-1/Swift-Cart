import 'package:ecommerceapp/controller/auth/verificationregister_controller.dart';
import 'package:ecommerceapp/core/class/handlingstatusrequests.dart';
import 'package:ecommerceapp/core/constant/mycolors.dart';
import 'package:ecommerceapp/core/constant/myimages.dart';
import 'package:ecommerceapp/view/widget/auth/headlineauth_wd.dart';
import 'package:ecommerceapp/view/widget/auth/otpauthregister_wd.dart';
import 'package:ecommerceapp/view/widget/mainlogo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerificationRegister extends StatelessWidget {
  const VerificationRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: MyColors.primaryColor,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Opacity(
                opacity: 0.2,
                child: Image.asset(MyImages.languagePageBackground)),
            GetBuilder<VerificationRegisterControllerImp>(
              builder: (verificationRegisterControllerImp) =>
                  HandlingStatusRequestsData(
                statusRequest: verificationRegisterControllerImp.statusRequest,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Center(
                    child: ListView(
                      children: [
                        MainLogo(),
                        ListView(
                          shrinkWrap: true,
                          children: [
                            HeadLineAuth(
                              headline: '33'.tr,
                              description: '34'.tr,
                            ),
                            SizedBox(height: 40),
                            OTPAuthRegister(
                              controller:
                                  verificationRegisterControllerImp.verifycode,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
