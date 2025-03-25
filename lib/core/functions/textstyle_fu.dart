import 'package:ecommerceapp/core/localization/changelocalecontroller.dart';
import 'package:get/get.dart';

ChangeLocaleController controller = Get.find();

String fontFamily(String arFont, String enFont) {
  final lang = controller.myServices.sharedPreferences.getString("lang");
  return lang == "ar" ? arFont : enFont;
}

double fontSize(double arSize, double enSize) {
  final lang = controller.myServices.sharedPreferences.getString("lang");
  return lang == "ar" ? arSize : enSize;
}
