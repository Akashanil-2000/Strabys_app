import 'package:css_stranbys/src/Shared/model/menu_model.dart';
import 'package:css_stranbys/src/Shared/model/truck_list_model.dart';
import 'package:css_stranbys/src/Shared/util/helper/common_helper.dart';
import 'package:get/get.dart';
import 'package:css_stranbys/src/Shared/app_settings_controller.dart';

import '../Shared/base_service.dart';

class DashboardController extends GetxController {
  var isLoading = false.obs;
  var appCtrl = Get.find<AppSettingsController>();
  var apiService = CommonAPIService();
  var recieveList = 0.obs;
  var putawayList = 0.obs;
  var deliveryOrderList = 0.obs;
  var isContainerDetailsEnabled = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  loadData() async {
    try {
      isLoading(true);
      MenuModel? response = await apiService.menuCount();
      if (response != null) {
        recieveList(response.result?.receive_list ?? 0);
        putawayList(response.result?.put_away ?? 0);
        deliveryOrderList(response.result?.delivery_orders ?? 0);
      }
      getTruckList();
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }

  var truckTypeList = <TruckTypeList>[].obs;
  var containerList = <ContainerList>[].obs;
  var truckCapacityList = <TruckCapacityList>[].obs;
  getTruckList() async {
    try {
      truckCapacityList([]);
      containerList([]);
      truckTypeList([]);
      TruckListModel? response = await apiService.getTruckList();
      if (response?.result?.container_list != null && response!.result!.container_list!.length > 0) {
        containerList.addAll(response.result!.container_list!.toList());
      }
      if (response?.result?.truck_capacity_list != null && response!.result!.truck_capacity_list!.length > 0) {
        truckCapacityList.addAll(response.result!.truck_capacity_list!.toList());
      }
      if (response?.result?.truck_type_list != null && response!.result!.truck_type_list!.length > 0) {
        truckTypeList.addAll(response.result!.truck_type_list!.toList());
      }
    } catch (e) {
    } finally {}
  }

  submitTruckDetails(
      {required driverName,
      required sealNo,
      required mobileNo,
      required totalQty,
      required truckNo,
      required containerNo,
      required truckTypeId,
      required truckCapacityId,
      required containerTypeId}) async {
    try {
      isLoading(true);

      var response = await apiService.addTruckSubmit(
          driverName: driverName,
          mobileNo: mobileNo,
          totalQty: totalQty,
          sealNo: sealNo,
          truckNo: truckNo,
          containerNo: containerNo,
          truckTypeId: truckTypeId,
          truckCapacityId: truckCapacityId,
          containerTypeId: containerTypeId);
      if (response != null && response['result']['status'] == 200) {
        Get.close(1);
        showSnackBar(message: '${response['result']['message']}');
      } else {
        showSnackBar(message: '${response['result']['message']}');
      }
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }
}
