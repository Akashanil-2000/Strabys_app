import 'package:css_stranbys/src/Dashboard/dashboard_screen.dart';
import 'package:css_stranbys/src/Delivery%20Order/delivery_order_screen.dart';
import 'package:css_stranbys/src/Internal%20Transfer/inernal_transfer_screen.dart';
import 'package:css_stranbys/src/Login/login_screen.dart';
import 'package:css_stranbys/src/Putaway/putaway_screen.dart';
import 'package:css_stranbys/src/Recieve/recieve_screen.dart';
import 'package:css_stranbys/src/Splashscreen/splash_screen.dart';
import 'package:css_stranbys/src/Warehouse%20Transfer/warehouse_list_screen.dart';
import 'package:get/get.dart';

import '../Dashboard/dashboard_controller.dart' show DashboardController;
import '../Delivery Order/delivery_order_controller.dart';
import '../Internal Transfer/internal_transfer_controller.dart';
import '../Putaway/putaway_controller.dart';
import '../Recieve/recieve_controller.dart';
import '../Splashscreen/splash_controller.dart';
import '../Warehouse Transfer/warehouse_controller.dart' show WarehouseController;
import 'app_settings_controller.dart';

class AppPage {
  static List<GetPage<dynamic>> pages = [
    GetPage(name: AppRoutes.INITIAL_ROUTE, page: () => const SplashScreen(), binding: SplashBinding()),
    GetPage(name: AppRoutes.DASHBOARD, page: () => const DashboardScreen(), binding: DashboardBinding()),
    GetPage(name: AppRoutes.LOGIN, page: () => LoginScreen()),
    GetPage(name: AppRoutes.PUTAWAY, page: () => PutAwayScreen(), binding: PutawayBinding()),
    GetPage(name: AppRoutes.RECIEVE, page: () => RecieveScreen(), binding: RecieveBinding()),
    GetPage(name: AppRoutes.DELIVERY_ORDER, page: () => DeliveryOrderScreen(), binding: DeliveryBinding()),
    GetPage(name: AppRoutes.INTERNAL_TRANSFER, page: () => InternalTransferScreen(), binding: InternalTransferBinding()),
    GetPage(name: AppRoutes.WAREHOUSE_TRANSFER, page: () => WarehouseListScreen(), binding: WarehouseBinding()),
  ];
}

class AppRoutes {
  static const String INITIAL_ROUTE = "/";
  static const String DASHBOARD = "/dashboard";
  static const String LOGIN = "/login";
  static const String SERVICE_PANEL = "/service_panel";
  static const String QC_INSPECTION = "/qc_inspection";
  static const String PRODUCTION = "/production";
  static const String NON_GRP = "/non_grp";
  static const String MOULDED = "/moulded";
  static const String LOADING = "/loading";
  static const String FINISHING = "/finishing";
  static const String DELIVERY_UPLOAD = "/delivery_upload";
  static const String DELIVERY_SCAN = "/delivery_scan";
  static const String STATUS = "/status";
  static const Map<String, String> RoutePath = {INITIAL_ROUTE: INITIAL_ROUTE};
  static const String PUTAWAY = "/putaway";
  static const String INTERNAL_TRANSFER = "/internal_transfer";
  static const String WAREHOUSE_TRANSFER = "/warehouse_transfer";
  static const String RECIEVE = "/recieve";
  static const String DELIVERY_ORDER = "/delivery_order";
}

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AppSettingsController(), permanent: true);
    Get.put(SplashController());
  }
}

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DashboardController());
  }
}

class PutawayBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PutawayController());
  }
}

class RecieveBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RecieveController());
  }
}

class DeliveryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DeliveryOrderController());
  }
}

class InternalTransferBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(InternalTransferController());
  }
}

class WarehouseBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(WarehouseController());
  }
}
