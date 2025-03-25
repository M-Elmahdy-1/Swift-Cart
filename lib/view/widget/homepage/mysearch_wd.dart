import 'package:ecommerceapp/core/constant/mycolors.dart';
import 'package:ecommerceapp/core/constant/myfonts.dart';
import 'package:ecommerceapp/core/localization/changelocalecontroller.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MySearch extends StatelessWidget {
  const MySearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: TextFormField(
          decoration: InputDecoration(
            fillColor: MyColors.textFieldBackground,
            filled: true,
            hintText: "Search",
            hintStyle: TextStyle(
              fontSize: 16,
              fontFamily: MyFonts.montserratMedium,
              fontWeight: FontWeight.bold,
              color: MyColors.textFieldFourground,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(13),
            ),
            prefixIcon: Container(
              padding: EdgeInsets.only(left: 21, right: 17),
              child: Icon(
                EvaIcons.search,
                color: MyColors.primaryColor,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: 7),
      IconButton(
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          )),
          minimumSize: WidgetStatePropertyAll(Size(55, 54)),
          backgroundColor: WidgetStatePropertyAll(MyColors.primaryColor),
          foregroundColor: WidgetStatePropertyAll(MyColors.whiteColor),
        ),
        onPressed: () {
          ChangeLocaleController controller = Get.find();
          controller.changeLangOnPress();
        },
        icon: Icon(EvaIcons.bellOutline),
      ),
    ]);
  }
}
