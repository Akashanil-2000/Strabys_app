import 'package:css_stranbys/src/Shared/app_settings_controller.dart';
import 'package:get/get.dart';

import '../Shared/app_page.dart';

class SplashController extends GetxController {
  var appCtrl = Get.find<AppSettingsController>();

  @override
  void onInit() {
    super.onInit();
    initialRouting();
  }

  initialRouting() async {
    Future.delayed(const Duration(seconds: 30), () {
      return Get.offAllNamed(AppRoutes.LOGIN);
    });
  }
}
