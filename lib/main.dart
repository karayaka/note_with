import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:note_with/routings/route_couns.dart';
import 'package:note_with/routings/route_pages.dart';
import 'package:note_with/views/security_views/security_view.dart';
import 'app_tools/languages .dart';
import 'datas/bindings/initial_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: Get.deviceLocale,
      //initialBinding: InitialBinding(),
      initialRoute: RouteConst.security,
      getPages: RoutePages.pages,
      fallbackLocale: const Locale('tr', 'TR'),
      title: 'Note App',
      theme:
          FlexThemeData.light(useMaterial3: true, scheme: FlexScheme.mandyRed),
      // The Mandy red, dark theme.
      darkTheme:
          FlexThemeData.dark(useMaterial3: true, scheme: FlexScheme.mandyRed),
    );
  }
}
