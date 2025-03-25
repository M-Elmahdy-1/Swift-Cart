import 'package:ecommerceapp/core/functions/textstyle_fu.dart';
import 'package:ecommerceapp/view/screen/onboarding_sc.dart';
import 'package:get/get.dart';

abstract class LanguageController extends GetxController {
  goToOnBoardingArabic();
  goToOnBoardingEnglish();
}

class LanguageControllerImp extends LanguageController {
  @override
  goToOnBoardingArabic() {
    controller.changeLang("ar");
    Get.off(OnBoarding(), transition: Transition.leftToRight);
  }

  @override
  goToOnBoardingEnglish() {
    controller.changeLang("en");
    Get.off(() => OnBoarding(), transition: Transition.rightToLeft);
  }
}
