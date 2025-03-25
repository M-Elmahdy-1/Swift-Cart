import 'package:ecommerceapp/controller/auth/forgotpassword/verificationresetpassword_controller.dart';
import 'package:ecommerceapp/core/class/handlingstatusrequests.dart';
import 'package:ecommerceapp/core/constant/mycolors.dart';
import 'package:ecommerceapp/core/constant/myimages.dart';
import 'package:ecommerceapp/view/widget/auth/headlineauth_wd.dart';
import 'package:ecommerceapp/view/widget/auth/otpauthresetpassword_wd.dart';
import 'package:ecommerceapp/view/widget/mainlogo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerificationResetPassword extends StatelessWidget {
  const VerificationResetPassword({super.key, this.onCompleted});
  final Function(String)? onCompleted;

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
            GetBuilder<VerificationResetPasswordControllerImp>(
              builder: (verificationResetPasswordControllerImp) =>
                  HandlingStatusRequestsData(
                statusRequest:
                    verificationResetPasswordControllerImp.statusRequest,
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
                            OTPAuthResetPassword(
                                controller:
                                    verificationResetPasswordControllerImp
                                        .verifycode),
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
