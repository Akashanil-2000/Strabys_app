import 'dart:async';
import 'package:css_stranbys/src/Dashboard/dashboard_controller.dart';
import 'package:css_stranbys/src/Delivery%20Order/delivery_order_controller.dart';
import 'package:css_stranbys/src/Shared/app_settings_controller.dart';
import 'package:css_stranbys/src/Shared/base_service.dart';
import 'package:css_stranbys/src/css_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  initializeAppServices().then((value) => runApp(const CSSApp()));
}

Future initializeAppServices() async {
  Get.put(AppSettingsController(), permanent: true);
  Get.put(BaseService(), permanent: true);

  Get.lazyPut(() => DeliveryOrderController(), fenix: true);
  Get.lazyPut(() => DashboardController(), fenix: true);
}
