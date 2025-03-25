// import 'package:flutter/foundation.dart';
import 'package:device_preview/device_preview.dart';
import 'package:ecommerceapp/core/localization/changelocalecontroller.dart';
import 'package:ecommerceapp/core/localization/translation.dart';
import 'package:ecommerceapp/core/services/services.dart';
import 'package:ecommerceapp/core/bindings/mybindings.dart';
import 'package:ecommerceapp/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await initializeServices();
//   runApp(
//     DevicePreview(
//       enabled: !kReleaseMode,
//       builder: (context) => MyApp(),
//     ),
//   );
// }
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeServices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ChangeLocaleController controller = Get.put(ChangeLocaleController());

    return GetMaterialApp(
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      translations: MyTranslation(),
      locale: controller.language,
      initialBinding: MyBindings(),
      getPages: routes,
    );
  }
}
