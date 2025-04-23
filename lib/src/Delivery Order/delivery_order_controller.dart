import 'package:css_stranbys/src/Delivery%20Order/delivery_location_screen.dart';
import 'package:css_stranbys/src/Delivery%20Order/pending_order_screen.dart';
import 'package:css_stranbys/src/Delivery%20Order/product_list_delivery_screen.dart';
import 'package:css_stranbys/src/Delivery%20Order/single_delivery_screen.dart';
import 'package:css_stranbys/src/Shared/app_settings_controller.dart';
import 'package:css_stranbys/src/Shared/base_service.dart';
import 'package:css_stranbys/src/Shared/model/delivery_location_model.dart';
import 'package:css_stranbys/src/Shared/model/delivery_model.dart';
import 'package:css_stranbys/src/Shared/model/delivery_product_list_model.dart';
import 'package:css_stranbys/src/Shared/model/delivery_single_model.dart';
import 'package:css_stranbys/src/Shared/model/location_model.dart';
import 'package:css_stranbys/src/Shared/model/submit_model.dart';
import 'package:css_stranbys/src/Shared/model/truck_list_model.dart';
import 'package:css_stranbys/src/Shared/util/helper/common_helper.dart';
import 'package:css_stranbys/src/shared/util/theme/theme_constant.dart';
import 'package:css_stranbys/src/shared/widgets/fi_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../Shared/model/order_pending_model.dart';

class DeliveryOrderController extends GetxController {
  var isLoading = false.obs;
  var appCtrl = Get.find<AppSettingsController>();
  var apiService = CommonAPIService();
  var deliveryData = [].obs;
  var deliverySearchData = [].obs;
  var singleDeliveryData = [].obs;
  var GRNNo = ''.obs;
  var orderId = ''.obs;
  final pendingItems = <PendingItem>[].obs;
  var isLoadingPending = false.obs;
  var currentOrderId = ''.obs; // You already have thi
  final errorMessage = RxString('');
  RxMap<String, String> locationSKUs = <String, String>{}.obs;
  RxMap<String, String> locationInternalRefs = <String, String>{}.obs;

  var isSearching = false.obs;
  var isSearchLoading = false.obs;
  var FirstSearchkey = TextEditingController();
  var locationProductSearchkey = TextEditingController();

  firstSearch(value) {
    if (value != null && value != '') {
      isSearching(true);
      isLoading(true);
      deliverySearchData([]);
      deliveryData.value.forEach((element) {
        try {
          value = value.toString().toLowerCase();
          if (element.name.toString().toLowerCase().contains(value) ||
              element.customer_name.toString().toLowerCase().contains(value) ||
              element.warehouse.name.toString().toLowerCase().contains(value)) {
            deliverySearchData.add(element);
          }
        } catch (e) {
          print('ERROR ${e}');
        } finally {
          isLoading(false);
        }
      });
    } else {
      isSearching(false);
      isLoading(false);
    }
  }

  locationProductSearch(value) {
    if (value != null && value != '') {
      isSearching(true);
      isLoading(true);
      deliveryProductSearchList([]);
      deliveryProductList.value.forEach((element) {
        try {
          value = value.toString().toLowerCase();
          if (element.product_name.toString().toLowerCase().contains(value) ||
              element.sku.toString().toLowerCase().contains(value) ||
              element.boe.toString().toLowerCase().contains(value) ||
              element.coo.toString().toLowerCase().contains(value) ||
              element.status.toString().toLowerCase().contains(value) ||
              element.batch_code.toString().toLowerCase().contains(value) ||
              element.internal_ref.toString().toLowerCase().contains(value)) {
            deliveryProductSearchList.add(element);
          }
        } catch (e) {
          print('ERROR ${e}');
        } finally {
          isLoading(false);
        }
      });
    } else {
      isSearching(false);
      isLoading(false);
    }
  }

  var locationPickingId = ''.obs;
  var locationBarcodeValue = ''.obs;
  // var locationDetails = const LocationDetails().obs;

  // var productDetailName = ''.obs;
  var productDetailStatus = ''.obs;
  var productDetailIndex = 0.obs;

  var locationQuantity = TextEditingController();

  var scannedLocation = <LocationDetails>[].obs;
  var deliveryLocationList = <LocationDetailsList>[].obs;
  var deliveryProductSearchList = <DeliveryProductListData>[].obs;
  var deliveryProductList = <DeliveryProductListData>[].obs;
  // var seelctedProduct = DeliveryProductListData().obs;
  var uploadImageList = <XFile>[].obs;

  @override
  void onInit() {
    super.onInit();
    initialise();
    FirstSearchkey.addListener(() {
      firstSearch(FirstSearchkey.text);
      return;
    });
    locationProductSearchkey.addListener(() {
      locationProductSearch(locationProductSearchkey.text);
      return;
    });
  }


  resetSearch() {
    FirstSearchkey.text = '';
    locationProductSearchkey.text = '';
    isLoading(false);
    isSearching(false);
    deliverySearchData([]);
    deliveryProductSearchList([]);
  }

  initialise() async {
    try {
      isLoading(true);
      deliveryData([]);
      DeliveryModel? response = await apiService.getDeliveryList();
      if (response != null &&
          response.result?.delivery_data != null &&
          response.result!.delivery_data!.isNotEmpty) {
        deliveryData.addAll(response.result!.delivery_data!);
      }

      getTruckList();
    } catch (e) {
      debugPrint('Error >> $e');
    } finally {
      isLoading(false);
    }
  }

  @override
  bool get permanent => true;


  Future<void> fetchPendingItems(String orderId) async {
    try {
      isLoadingPending(true);
      errorMessage('');


      debugPrint('Fetching items for order: $orderId');


      final items = await apiService.getPendingOrderList(orderId: orderId);
      debugPrint('Received ${items.length} items');
      debugPrint('🟢 Received ${items} items');

      pendingItems.assignAll(items);
      debugPrint('🟢 Updated pendingItems: ${pendingItems.length}');

    } catch (e) {
      debugPrint('🔴 Error: $e');
      errorMessage(e.toString());
    } finally {
      isLoadingPending(false);
    }
  }

  Future<void> loadPendingItems(String orderId, {bool forceRefresh = false}) async {
    try {
      if (pendingItems.isEmpty || forceRefresh) {
        isLoadingPending(true);
        final items = await apiService.getPendingOrderList(orderId: orderId);
        pendingItems.assignAll(items);
      }
    } catch (e) {
      errorMessage(e.toString());
    } finally {
      isLoadingPending(false);
    }
  }


  Future<void> fetchProductDetailsForLocation( locationBarcode,  orderId) async {
    try {
      DeliveryProductListModel? response = await apiService.getDeliveryProductList(
        order_id: orderId,
        locationBarcode: locationBarcode,
      );

      if (response != null && response.result?.product_details != null) {
        final products = response.result!.product_details!;
        if (products.isNotEmpty) {
          // Use the first product's SKU/Internal Ref (or concatenate all)
          locationSKUs[locationBarcode] = products.first.sku ?? 'N/A';
          locationInternalRefs[locationBarcode] = products.first.internal_ref ?? 'N/A';
        }
      }
    } catch (e) {
      debugPrint('Error fetching product details: $e');
    }
  }


  getSingleRecord({id}) async {
    try {
      isLoading(true);
      singleDeliveryData([]);
      GRNNo('');
      orderId('$id');
      // DeliverySingleModel? response = await apiService.getDeliveryListSingle(orderId: id);
      // if (response != null && response.result?.delivery_order_data != null && response.result!.delivery_order_data!.isNotEmpty) {
      //   singleDeliveryData.addAll(response.result!.delivery_order_data!);
      //   GRNNo(response.result!.delivery_order_data!.first.delivery_name ?? '');
      //   Get.to(() => const SingleDeliveryScreen());
      //   resetSearch();
      // }

      locationPickingId('');
      deliveryLocationList([]);
      DeliveryLocationModel? response =
          await apiService.getDeliveryListSingle(orderId: id);

      if (response != null &&
          response.result?.location_details != null &&
          response.result!.location_details!.isNotEmpty) {
        deliveryLocationList.addAll(response.result!.location_details!);
        for (var location in deliveryLocationList) {
          await fetchProductDetailsForLocation(location.Location_barcode ?? '', id);
        }

        // locationPickingId('$pickingId');
        Get.to(() => DeliveryLocationScreen());
      }

      // getDeliveryLocationList(pickingId: item.picking_id);
    } catch (e) {
      debugPrint('Error >> $e');
    } finally {
      isLoading(false);
    }
  }

  getDeliveryLocationList({pickingId}) async {
    try {
      isLoading(true);
      locationPickingId('');
      deliveryLocationList([]);
      DeliveryLocationModel? response =
          await apiService.getDeliveryLocationList(pickingId: pickingId);
      if (response != null &&
          response.result?.location_details != null &&
          response.result!.location_details!.isNotEmpty) {
        deliveryLocationList.addAll(response.result!.location_details!);
        locationPickingId('$pickingId');
        Get.to(() => DeliveryLocationScreen());
      }
    } catch (e) {
      debugPrint('Error >> $e');
    } finally {
      isLoading(false);
    }
  }

  getDeliveryProductList({ordrId, locationBarcode}) async {
    try {
      isLoading(true);
      deliveryProductList([]);
      DeliveryProductListModel? response =
          await apiService.getDeliveryProductList(
              order_id: ordrId, locationBarcode: locationBarcode);
      if (response != null &&
          response.result?.product_details != null &&
          response.result!.product_details!.isNotEmpty) {
        deliveryProductList.addAll(response.result!.product_details!);
        locationBarcodeValue(locationBarcode);
        Get.to(() => const ProductListDeliveryScreen());
      }
    } catch (e) {
      debugPrint('Error >> $e');
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
      if (response?.result?.container_list != null &&
          response!.result!.container_list!.length > 0) {
        containerList.addAll(response.result!.container_list!.toList());
      }
      if (response?.result?.truck_capacity_list != null &&
          response!.result!.truck_capacity_list!.length > 0) {
        truckCapacityList
            .addAll(response.result!.truck_capacity_list!.toList());
      }
      if (response?.result?.truck_type_list != null &&
          response!.result!.truck_type_list!.length > 0) {
        truckTypeList.addAll(response.result!.truck_type_list!.toList());
      }
    } catch (e) {
      debugPrint('Error >> $e');
    } finally {}
  }

  submitTruckDetails(
      {required pickingId,
      required driverName,
      required mobileNo,
      required truckNo,
      required containerNo,
      required truckTypeId,
      required truckCapacityId,
      required containerTypeId}) async {
    debugPrint('Truck details collected (not saved to API)');
    try {
      isLoading(true);

      var response = await apiService.truckSubmit(
          pickingId: pickingId,
          driverName: driverName,
          mobileNo: mobileNo,
          truckNo: truckNo,
          containerNo: containerNo,
          truckTypeId: truckTypeId,
          truckCapacityId: truckCapacityId,
          containerTypeId: containerTypeId);
      print(response.toString());
      if (response != null && response['result']['status'] == 200) {
        await fetchPendingItems(currentOrderId.value);
        Get.off(() => PendingOrderScreen(orderId: currentOrderId.value));
        showSnackBar(message: '${response['result']['message']}');
      } else {
        showSnackBar(message: '${response['result']['message']}');
      }
    } catch (e) {
      debugPrint('Error >> $e');
      showSnackBar(message: 'Something went wrong');
    } finally {
      isLoading(false);
    }
  }

  submitScannedLocation({delivery_location_id, String? qty}) async {
    try {
      isLoading(true);

      SubmitModel? response = await apiService.submitScannedDeliveryLocation(
          delivery_location_id: delivery_location_id, qty: qty);
      if (response != null && response.result?.status == 200) {
        showSnackBar(message: 'Successfully Submitted!');
      }

      try {
        DeliveryProductListModel? responseDPL =
            await apiService.getDeliveryProductList(
                order_id: orderId.value,
                locationBarcode: locationBarcodeValue.value);
        if (responseDPL != null &&
            responseDPL.result?.product_details != null &&
            responseDPL.result!.product_details!.isNotEmpty) {
          deliveryProductList([]);
          deliveryProductList.addAll(responseDPL.result!.product_details!);
        }
      } catch (e) {
        debugPrint('Error Recieveing Updated List >> $e');
        showSnackBar(
            message: 'Something went wrong >> Error Recieveing Updated List');
      }
    } catch (e) {
      debugPrint('ErrorSubmit >> $e');
      showSnackBar(message: 'Something went wrong');
    } finally {
      isLoading(false);
    }
  }

  final _formKey = GlobalKey<FormState>();

  getQtyDialog(BuildContext context, {delivery_location_id, balanceQty}) async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return WillPopScope(
              onWillPop: () async {
                return false;
              },
              child: AlertDialog(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  titlePadding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  title: Text('Enter Quantity (Max: $balanceQty)', style: FITextStyle.sMBold),
                  content: Form(
                    key: _formKey,
                    child: TextFormField(
                            style: FITextStyle.xxxs
                                .copyWith(fontWeight: FontWeight.w400),
                            keyboardType: TextInputType.number,
                            controller: locationQuantity,
                            autofocus: true,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              var scannedQty = int.parse(
                                  value != null && value != ''
                                      ? value.toString()
                                      : '0');
                              if (value == null ||
                                  value == '' ||
                                  value == '0') {
                                return 'Required Quantity';
                              } else if (scannedQty > balanceQty) {
                                return 'Entered Qty is greater than Bal. Qty';
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                labelStyle: FITextStyle.xxxsMBold,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: BorderSide.none),
                                suffixIcon: const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 23,
                                    color: Colors.transparent),
                                labelText: 'Quantity',
                                hintStyle: FITextStyle.xxxs
                                    .copyWith(color: Colors.grey.shade800),
                                errorStyle: FITextStyle.xxxs
                                    .copyWith(color: Colors.red),
                                isDense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 20),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: const BorderSide(
                                        color: Colors.blue, width: 3)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: const BorderSide(
                                        color: Colors.black54, width: 3)),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.auto))
                        .paddingSymmetric(vertical: 5, horizontal: 10),
                  ),
                  actions: [
                    Row(children: [
                      Expanded(
                        child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey.shade300,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                            onPressed: () async {
                              // Force validation update first
                              _formKey.currentState?.validate();

                              // Wait one frame to ensure validation completes
                              await Future.delayed(Duration.zero);

                              // Re-check validation state
                              if (_formKey.currentState?.validate() ?? false) {
                                final enteredQty = int.tryParse(locationQuantity.text) ?? 0;
                                if (enteredQty <= balanceQty) {  // Additional safeguard
                                  submitScannedLocation(
                                    delivery_location_id: delivery_location_id,
                                    qty: enteredQty.toString(),
                                  );
                                  Navigator.pop(context);
                                  appCtrl.resetScanData();
                                  locationQuantity.clear();
                                }
                              }
                            },
                                child: Text('Submit',
                                    style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: 11)))
                            .paddingSymmetric(horizontal: 10),
                      ),
                      Expanded(
                          child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red.shade200,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5))),
                                  onPressed: () {
                                    appCtrl.resetScanData();
                                    locationQuantity.text = '';
                                    Get.back();
                                  },
                                  child: Text('Cancel',
                                      style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontSize: 11)))
                              .paddingSymmetric(horizontal: 10))
                    ])
                  ]));
        });
  }

  getConfirmationDialog(BuildContext context,
      {message, onSubmit, confirmTitle}) async {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return WillPopScope(
            onWillPop: () async {
              return true;
            },
            child: AlertDialog(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              titlePadding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              title: Text('Confirmation', style: FITextStyle.sMBold),
              content: FIText(
                text: '${message ?? ''}',
                textStyle: FITextStyle.sMBold,
                textAlign: TextAlign.center,
              ),
              actions: [
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green.shade300,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5))),
                              onPressed: onSubmit ?? () {},
                              child: Text(confirmTitle ?? 'Submit',
                                  style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 11)))
                          .paddingSymmetric(horizontal: 10),
                    ),
                    Expanded(
                      child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey.shade200,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5))),
                              onPressed: () {
                                Get.back();
                              },
                              child: Text('Cancel',
                                  style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 11)))
                          .paddingSymmetric(horizontal: 10),
                    ),
                  ],
                )
              ],
            ),
          );
        });
  }

}
