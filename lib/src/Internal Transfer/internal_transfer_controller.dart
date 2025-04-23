import 'dart:async';
import 'package:css_stranbys/src/Shared/app_settings_controller.dart';
import 'package:css_stranbys/src/Shared/model/warehouse_destination_location_model.dart';
import 'package:css_stranbys/src/Shared/model/warehouse_list_model.dart';
import 'package:css_stranbys/src/Shared/model/warehouse_location_model.dart';
import 'package:css_stranbys/src/Shared/model/warehouse_product_list_model.dart';
import 'package:css_stranbys/src/Shared/model/warehouse_single_product_list_model.dart';
import 'package:css_stranbys/src/Shared/util/theme/theme_constant.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_text.dart';
import 'package:css_stranbys/src/shared/util/helper/common_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Shared/base_service.dart';

class InternalTransferController extends GetxController {
  var isLoading = false.obs;
  var appCtrl = Get.find<AppSettingsController>();
  var apiService = CommonAPIService();
  var quantityCtrl = TextEditingController();

  var warehouseList = <WarehouseItem>[].obs;
  var selectedWarehouseName = ''.obs;
  var selectedWarehouseId = 0.obs;

  var locationList = <WarehouseLocationItem>[].obs;
  var selectedLocationName = ''.obs;
  var selectedLocationId = 0.obs;
  var selectedCustomerId = 0.obs;

  var productList = <WarehouseProductItem>[].obs;
  var customerList = <CustomerItem>[].obs;
  var selectedSingleProductName = ''.obs;
  var selectedSingleProductSKU = ''.obs;
  var selectedSingleProductInternalRef = ''.obs;
  var selectedSingleProductId = 0.obs;

  var singleProductList = <WarehouseSingleProductItem>[].obs;

  var destinationLocationList = <WarehouseDestinationLocationItem>[].obs;

  resetData() {
    selectedWarehouseName('');
    selectedWarehouseId(0);
    warehouseList([]);

    locationList([]);
    selectedLocationName('');
    selectedLocationId(0);

    productList([]);
    customerList([]);
    selectedSingleProductName('');
    selectedSingleProductSKU('');
    selectedSingleProductInternalRef('');
    selectedSingleProductId(0);

    singleProductList([]);
    destinationLocationList([]);

    resetSearch();

    isLoading(false);
  }

  var productSearchkey = TextEditingController();
  var customerSearchkey = TextEditingController();
  var productSearchList = <WarehouseProductItem>[].obs;
  var customerSearchList = <CustomerItem>[].obs;

  var singleProductSearchkey = TextEditingController();
  var singleProductSearchList = <WarehouseSingleProductItem>[].obs;

  var isSearching = false.obs;

  Timer? debounce;

  @override
  void onInit() {
    super.onInit();
    initialise();
    productSearchkey.addListener(() {
      if (productSearchkey.text == '') {
        productSearchList([]);
        isSearching(false);
      }
    });
    customerSearchkey.addListener(() {
      if (customerSearchkey.text == '') {
        customerSearchList([]);
        isSearching(false);
      }
    });
    singleProductSearchkey.addListener(() {
      if (singleProductSearchkey.text == '') {
        singleProductSearchList([]);
        isSearching(false);
      }
    });
  }

  @override
  void dispose() {
    debounce?.cancel();
    super.dispose();
  }

  initialise() async {
    try {
      isLoading(true);
      warehouseList([]);
      WarehouseListModel? response = await apiService.getWarehouseList();
      if (response != null && response.result != null && response.result!.isNotEmpty) {
        warehouseList.addAll(response.result ?? []);
      }
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }

  getLocation({code}) async {
    try {
      isLoading(true);
      locationList([]);
      WarehouseLocationModel? response = await apiService.getWarehouseLocationList(warehouseId: selectedWarehouseId.value, barcode: code);
      if (response != null && response.result != null && response.result!.isNotEmpty) {
        locationList.addAll(response.result ?? []);
      } else {
        showSnackBar(message: 'Location Not Found.');
      }
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }

  getProductList({id}) async {
    try {
      if (id != null) {
        selectedCustomerId(id);
      }
      isLoading(true);
      productList([]);
      WarehouseProductListModel? response = await apiService.getWarehouseProductList(locationId: selectedLocationId.value, customerId: id ?? selectedCustomerId.value);
      if (response != null && response.result != null && response.result!.isNotEmpty) {
        productList.addAll(response.result ?? []);
      } else {
        showSnackBar(message: 'Product Not Found.');
      }
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }

  getCustomerList() async {
    try {
      isLoading(true);
      customerList([]);
      CustomerListModel? response = await apiService.getWarehouseCustomerList(locationId: selectedLocationId.value);

      if (response != null && response.result != null && response.result!.isNotEmpty) {
        customerList.addAll(response.result ?? []);
      } else {
        showSnackBar(message: 'Customer Not Found.');
      }
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }

  getSingleProductList() async {
    try {
      isLoading(true);
      singleProductList([]);
      WarehouseSingleProductListModel? response =
          await apiService.getWarehouseSingleProductList(locationId: selectedLocationId.value, singleProductId: selectedSingleProductId.value);
      if (response != null && response.result != null && response.result!.isNotEmpty) {
        singleProductList.addAll(response.result ?? []);
      } else {
        showSnackBar(message: 'Product Batch Not Found.');
      }
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }

  getDesitinationLocation({barcode}) async {
    try {
      isLoading(true);
      destinationLocationList([]);
      WarehouseDestinationLocationModel? response = await apiService.getDesitinationLocation(barcode: barcode, warehouseId: selectedWarehouseId.value);
      if (response != null && response.result != null && response.result!.isNotEmpty) {
        destinationLocationList.addAll(response.result ?? []);
      } else {
        showSnackBar(message: 'Destination Location Not Found.');
      }
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }

  transferSubmit({productQty, lotId, locationDestinationId}) async {
    try {
      if (lotId != 0 && locationDestinationId != 0) {
        isLoading(true);
        var response = await apiService.transferSubmit(
          locationDestinationId: locationDestinationId,
          locationId: selectedLocationId.value,
          lotId: lotId,
          productId: selectedSingleProductId.value,
          productQty: productQty,
          warehouseId: selectedWarehouseId.value,
        );
        getSingleProductList();
        if (response != null && response['result'] != null && response['result']['status'] == 200 && response['result']['response'] == 'Success') {
          showSnackBar(message: '${response['result']['message']}');
        } else {
          showSnackBar(message: '${response['result']['message']}');
        }
      } else {
        showSnackBar(message: 'Could\'nt Submit!, Few parameters must be greater than 0.');
      }
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }

  searchProduct(
    value, {
    isProduct = true,
  }) {
    if (value != null && value != '') {
      isSearching(true);
      isLoading(true);
      if (isProduct == true) {
        productSearchList([]);
        productList.value.forEach((element) {
          try {
            value = value.toString().toLowerCase();

            if (element.name.toString().toLowerCase().contains(value) || element.sku.toString().toLowerCase().contains(value)) {
              productSearchList.add(element);
            }
          } catch (e) {
          } finally {
            isLoading(false);
          }
        });
      } else {
        singleProductSearchList([]);
        singleProductList.value.forEach((element) {
          try {
            value = value.toString().toLowerCase();

            if (element.boe.toString().toLowerCase().contains(value) ||
                element.sku.toString().toLowerCase().contains(value) ||
                element.coo.toString().toLowerCase().contains(value) ||
                element.internal_ref.toString().toLowerCase().contains(value) ||
                element.batch_code.toString().toLowerCase().contains(value)) {
              singleProductSearchList.add(element);
            }
          } catch (e) {
          } finally {
            isLoading(false);
          }
        });
      }
    } else {
      isSearching(false);
      isLoading(false);
    }
  }

  searchCustomer(value) {
    if (value != null && value != '') {
      isSearching(true);
      isLoading(true);

      customerSearchList([]);
      customerList.value.forEach((element) {
        try {
          value = value.toString().toLowerCase();

          if (element.name.toString().toLowerCase().contains(value)) {
            customerSearchList.add(element);
          }
        } catch (e) {
        } finally {
          isLoading(false);
        }
      });
    } else {
      isSearching(false);
      isLoading(false);
    }
  }

  resetSearch() {
    productSearchkey.text = '';
    singleProductSearchkey.text = '';
    isLoading(false);
    isSearching(false);
    productSearchList([]);
    singleProductSearchList([]);
  }

  final _formKey = GlobalKey<FormState>();

  getQtyDialog(BuildContext context, {int validatingQty = 0, int lotId = 0, int id = 0}) async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return WillPopScope(
              onWillPop: () async => false,
              child: AlertDialog(
                  contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  titlePadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  title: Text('Enter Quantity', style: FITextStyle.sMBold),
                  content: Form(
                    key: _formKey,
                    child: TextFormField(
                            style: FITextStyle.xxxs.copyWith(fontWeight: FontWeight.w400),
                            keyboardType: TextInputType.number,
                            controller: quantityCtrl,
                            autofocus: true,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value == null || value == '' || value == '0') {
                                return 'Required Quantity';
                              } else if (int.parse(value) > validatingQty) {
                                return 'Please Enter Max of ($validatingQty) Qty ';
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                labelStyle: FITextStyle.xxxsMBold,
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: BorderSide.none),
                                suffixIcon: const Icon(Icons.arrow_forward_ios_rounded, size: 23, color: Colors.transparent),
                                labelText: 'Quantity',
                                hintStyle: FITextStyle.xxxs.copyWith(color: Colors.grey.shade800),
                                errorStyle: FITextStyle.xxxs.copyWith(color: Colors.red),
                                isDense: true,
                                contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: const BorderSide(color: Colors.blue, width: 3)),
                                enabledBorder:
                                    OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: const BorderSide(color: Colors.black54, width: 3)),
                                floatingLabelBehavior: FloatingLabelBehavior.auto))
                        .paddingSymmetric(vertical: 5, horizontal: 10),
                  ),
                  actions: [
                    Row(children: [
                      Expanded(
                        child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey.shade300, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                                onPressed: () async {
                                  if (_formKey.currentState?.validate() == true) {
                                    if (quantityCtrl.text != '' && !quantityCtrl.text.startsWith('0')) {
                                      // scannedLocation.add(LocationDetails(id: locationDetails.value.id ?? 0, name: locationDetails.value.name ?? "", quantity: quantity.text, status: 'Pending'));
                                      // locationDetails(const LocationDetails());
                                      await transferSubmit(
                                          productQty: int.parse(quantityCtrl.text.isNotEmpty ? quantityCtrl.text : '0'), lotId: lotId, locationDestinationId: id);
                                      // appCtrl.resetScanData();
                                      await getProductList();
                                      quantityCtrl.text = '';
                                      Get.close(3);
                                    }
                                  }
                                },
                                child: Text('Apply', style: TextStyle(color: Colors.grey.shade700, fontSize: 11)))
                            .paddingSymmetric(horizontal: 10),
                      ),
                      Expanded(
                          child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red.shade200, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                                  onPressed: () {
                                    quantityCtrl.text = '';
                                    Get.back();
                                  },
                                  child: Text('Cancel', style: TextStyle(color: Colors.grey.shade700, fontSize: 11)))
                              .paddingSymmetric(horizontal: 10))
                    ])
                  ]));
        });
  }

  getConfirmationDialog(BuildContext context, {message, onSubmit, confirmTitle}) async {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) => WillPopScope(
            onWillPop: () async => true,
            child: AlertDialog(
                contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                titlePadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                title: Text('Confirmation', style: FITextStyle.sMBold),
                content: FIText(text: '${message ?? ''}', textStyle: FITextStyle.sMBold, textAlign: TextAlign.center),
                actions: [
                  Row(children: [
                    Expanded(
                        child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green.shade300, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                                onPressed: onSubmit ?? () {},
                                child: Text(confirmTitle ?? 'Submit', style: TextStyle(color: Colors.grey.shade700, fontSize: 11), maxLines: 1))
                            .paddingSymmetric(horizontal: 10)),
                    Expanded(
                        child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey.shade200, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                                onPressed: () => Get.back(),
                                child: Text('Cancel', style: TextStyle(color: Colors.grey.shade700, fontSize: 11)))
                            .paddingSymmetric(horizontal: 10))
                  ])
                ])));
  }
}
