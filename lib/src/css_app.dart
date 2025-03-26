import 'package:css_stranbys/src/Shared/app_page.dart';

import 'package:css_stranbys/src/Shared/app_settings_controller.dart';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CSSApp extends GetView<AppSettingsController> {
  const CSSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context),
            child: child!,
          );
        },
        themeMode: ThemeMode.light,
        title: 'CSS',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        initialRoute: AppRoutes.INITIAL_ROUTE,
        initialBinding: SplashBinding(),
        getPages: AppPage.pages,
      ),
    );
  }
}