
import 'package:css_stranbys/src/Shared/app_settings_controller.dart';
import 'package:css_stranbys/src/Shared/model/warehouse_check_bal_qty_model.dart';
import 'package:css_stranbys/src/Shared/model/warehouse_location_list_model.dart';
import 'package:css_stranbys/src/Shared/model/warehouse_scanned_data_list_model.dart';
import 'package:css_stranbys/src/Shared/model/warehouse_stock_list_model.dart';
import 'package:css_stranbys/src/Shared/model/warehouse_stock_product_list_model.dart';
import 'package:css_stranbys/src/Shared/util/helper/common_helper.dart';
import 'package:css_stranbys/src/Shared/util/theme/theme_constant.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_text.dart';
import 'package:css_stranbys/src/Warehouse%20Transfer/product_list_screen.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../Shared/base_service.dart';

class WarehouseController extends GetxController {
  var isLoading = false.obs;

  var appCtrl = Get.find<AppSettingsController>();
  var apiService = CommonAPIService();

  var isStockIn = ''.obs;

  var stockInList = <StockInList>[].obs;
  var stockOutList = <StockOutList>[].obs;
  var productList = <WarehouseStockProductList>[].obs;
  var locationList = <LocationList>[].obs;
  var productQtyList = <ProductQtyList>[].obs;

  var selectedTransferId = 0.obs;
  var selectedTransferLineId = 0.obs;
  var selectedMoveId = 0.obs;
  var selectedProductId = 0.obs;
  var selectedProductName = ''.obs;
  var selectedCOO = ''.obs;
  var selectedScaffoldTitle = ''.obs;
  var selectedBalanceQty = 0.00.obs;

  final qtyAlertformKey = GlobalKey<FormState>();
  final qtyStockInAlertformKey = GlobalKey<FormState>();
  var locationQuantity = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    appCtrl.resetScanData();
    initialise();
  }

  reset() {
    selectedTransferId(0);
    selectedTransferLineId(0);
    selectedMoveId(0);
    selectedProductId(0);
    productList([]);
    locationList([]);
    productQtyList([]);
    selectedProductName('');
    selectedScaffoldTitle('');
    selectedCOO('');
    locationQuantity.clear();
    selectedBalanceQty(0.00);
  }

  initialise() async {
    try {
      isLoading(true);
      stockInList([]);
      stockOutList([]);

      WarehouseStockListModel? response = await apiService.getWarehouseStocks();
      if (response != null && response.result?.stock_in_list != null && response.result!.stock_in_list!.isNotEmpty) {
        stockInList(response.result?.stock_in_list ?? []);
      }
      if (response != null && response.result?.stock_out_list != null && response.result!.stock_out_list!.isNotEmpty) {
        stockOutList(response.result?.stock_out_list ?? []);
      }
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }

  getWarehouseStockProductList({transferId}) async {
    try {
      isLoading(true);
      productList([]);
      selectedTransferId(transferId);
      WarehouseStockProductListModel? response = await apiService.getWarehouseStockProductList(trasnferId: transferId);
      if (response != null && response.result?.product_list != null && response.result!.product_list!.isNotEmpty) {
        productList.addAll(response.result?.product_list ?? []);
        Get.to(() => WarehouseProductListScreen());
      } else {
        showSnackBar(message: 'No Products Found');
      }
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }

  getWarehouseStockLocationList({transferLineId, moveId, productId}) async {
    try {
      isLoading(true);
      locationList([]);
      selectedTransferLineId(transferLineId);
      selectedMoveId(moveId);
      selectedProductId(productId);
      WarehouseLocationListModel? response = await apiService.getWarehouseStockLocationList(transferLineId: transferLineId);
      if (response != null && response.result?.location_list != null && response.result!.location_list!.isNotEmpty) {
        locationList.addAll(response.result?.location_list ?? []);
        selectedBalanceQty(response.result?.balance_qty ?? 0);
      } else {
        showSnackBar(message: 'No Location Found');
      }
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }

  getWarehouseStockInLocationList() async {
    try {
      isLoading(true);
      locationList([]);
      productQtyList([]);

      WarehouseLocationListModel? response = await apiService.getWarehouseStockInLocationList(
          transferLineId: selectedTransferLineId.value, transferId: selectedTransferId.value, barcode: appCtrl.barcodeString.value);
      if (response != null && response.result?.location_list != null && response.result!.location_list!.isNotEmpty) {
        selectedBalanceQty(response.result?.balance_qty ?? 0);
        locationList.addAll(response.result?.location_list ?? []);
        productQtyList.addAll(response.result?.product_qty_list ?? []);
        productQtyList.retainWhere((element) => element.quantity != 0);
      } else {
        showSnackBar(message: 'No Location Found');
      }
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }

  Future<double?> checkStockInBalanceQuantity() async {
    if (selectedTransferLineId.value != 0) {
      WarehouseCheckQtyBal response = await apiService.checkStockInBalanceQuantity(transferLineId: selectedTransferLineId.value);
      try {
        if (response != null && response.result?.balance_qty != null) {
          selectedBalanceQty(response.result?.balance_qty ?? 0);
          return selectedBalanceQty.value;
        } else {
          selectedBalanceQty(0);
          return 0;
        }
      } catch (e) {
        return null;
      }
    }

    return null;
  }

  Future<List<ScannedDataList>> previewScannedDetails({transferLineId}) async {
    try {
      isLoading(true);
      var response = await apiService.previewScannedDetail(transferLineId: transferLineId);
      if (response != null && response.result?.scanned_data_list != null && response.result!.scanned_data_list!.isNotEmpty) {
        List<ScannedDataList> scannedDataList = response.result?.scanned_data_list ?? [];
        return scannedDataList;
      } else {
        showSnackBar(message: 'No Scanned Details Found');
        return [];
      }
    } catch (e) {
      return [];
    } finally {
      isLoading(false);
    }
  }

  submitScannedLocation({required moveId, required transferLineid, required lotId, required locationId, required quantity, required productId}) async {
    try {
      isLoading(true);
      int qty = int.tryParse(quantity) != null ? int.parse(quantity) : 0;
      var response = await apiService.submitScannedWarehouseLocation(
          moveId: moveId, transferLineid: transferLineid, lotId: lotId, locationId: locationId, quantity: qty, productId: productId);
      if (response != null && response['result']['status'] == 200) {
        await getWarehouseStockLocationList(transferLineId: selectedTransferLineId.value);

        if (selectedBalanceQty.value == 0) {
          Get.close(1);
          await getWarehouseStockProductList(transferId: selectedTransferId.value);
        }
        showSnackBar(message: '${response['result']['message']}');
      } else {
        showSnackBar(message: 'Failed: ${response['result']['message']}');
      }
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }

  submitStockInScannedLocation({
    required moveId,
    required transferLineid,
    required lotId,
    required locationId,
    required quantity,
  }) async {
    try {
      isLoading(true);
      int qty = int.tryParse(quantity) != null ? int.parse(quantity) : 0;
      var response = await apiService.submitStockInScannedLocation(
        moveId: moveId,
        transferLineid: transferLineid,
        lotId: lotId,
        locationId: locationId,
        quantity: qty,
      );
      if (response != null && response['result']['status'] == 200) {
        showSnackBar(message: '${response['result']['message']}');
      } else {
        showSnackBar(message: 'Failed: ${response['result']['message']}');
      }
    } catch (e) {
    } finally {
      locationList([]);
      appCtrl.resetScanData();
      locationQuantity.text = '';
      var balance = await checkStockInBalanceQuantity();
      if (balance != null && balance < 1.0) {
        productQtyList([]);
        Get.close(1);
        await getWarehouseStockProductList(transferId: selectedTransferId.value);
      }
      isLoading(false);
    }
  }

  getQtyDialog(BuildContext context, {balanceQty, required availableQty, required lotId, required locationId}) async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return PopScope(
              canPop: false,
              child: AlertDialog(
                  contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  titlePadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  title: Text('Enter Quantity', style: FITextStyle.sMBold),
                  content: Form(
                    key: qtyAlertformKey,
                    child: TextFormField(
                            style: FITextStyle.xxxs.copyWith(fontWeight: FontWeight.w400),
                            keyboardType: TextInputType.number,
                            controller: locationQuantity,
                            autofocus: true,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              var scannedQty = int.parse(value != null && value != '' ? value.toString() : '0');
                              if (value == null || value == '' || value == '0') {
                                return 'Required Quantity';
                              } else if (scannedQty > balanceQty) {
                                return 'Entered Qty is greater than Bal.Qty';
                              } else if (scannedQty > availableQty) {
                                return 'Entered Qty is greater than Avl.Qty';
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
                                  if (qtyAlertformKey.currentState?.validate() == true) {
                                    if (locationQuantity.text != '' && !locationQuantity.text.startsWith('0')) {
                                      submitScannedLocation(
                                          quantity: locationQuantity.text,
                                          moveId: selectedMoveId.value,
                                          transferLineid: selectedTransferLineId.value,
                                          lotId: lotId,
                                          locationId: locationId,
                                          productId: selectedProductId.value);
                                      Get.back();
                                      appCtrl.resetScanData();
                                      locationQuantity.text = '';
                                    }
                                  }
                                },
                                child: Text('Submit', style: TextStyle(color: Colors.grey.shade700, fontSize: 12)))
                            .paddingSymmetric(horizontal: 10),
                      ),
                      Expanded(
                          child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red.shade200, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                                  onPressed: () {
                                    appCtrl.resetScanData();
                                    locationQuantity.text = '';
                                    Get.back();
                                  },
                                  child: Text('Cancel', style: TextStyle(color: Colors.grey.shade700, fontSize: 12)))
                              .paddingSymmetric(horizontal: 10))
                    ])
                  ]));
        });
  }

  getQtyStockInDialog(BuildContext context, {required locationId}) async {
    var selectedLot = ''.obs;
    var subLoading = false.obs;
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return PopScope(
              canPop: false,
              child: AlertDialog(
                  contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  titlePadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  title: Text('Select Inbound Doc & Enter Quantity', style: FITextStyle.sMBold, textAlign: TextAlign.center),
                  content: Form(
                    key: qtyStockInAlertformKey,
                    child: Obx(() => Wrap(
                          children: [
                            DropdownButtonHideUnderline(
                                    child: DropdownButton2(
                                        isExpanded: true,
                                        hint: FIText(text: 'Select Inbound Doc', textStyle: FITextStyle.xxxsMBold, textOverflow: TextOverflow.ellipsis),
                                        items: productQtyList.value
                                            .map((item) => DropdownMenuItem<String>(
                                                value: item.lot_id.toString(),
                                                child: Text(item.lot_name ?? '', style: FITextStyle.xxxsMBold, maxLines: 2, overflow: TextOverflow.ellipsis)))
                                            .toList(),
                                        value: selectedLot.value == '' ? null : selectedLot.value,
                                        onChanged: (value) async {
                                          subLoading(true);
                                          selectedLot.value = value.toString();
                                          subLoading(false);
                                        },
                                        buttonStyleData: ButtonStyleData(
                                            height: 50,
                                            width: 100.w,
                                            padding: const EdgeInsets.only(left: 14, right: 14),
                                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white)),
                                        iconStyleData: IconStyleData(
                                            icon: const Icon(Icons.keyboard_arrow_down_rounded),
                                            iconSize: 24,
                                            iconEnabledColor: Colors.red,
                                            iconDisabledColor: Colors.grey),
                                        dropdownStyleData: DropdownStyleData(
                                            maxHeight: 35.h,
                                            padding: null,
                                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                                            elevation: 8,
                                            scrollbarTheme: ScrollbarThemeData(
                                                thumbColor: MaterialStateProperty.all(Colors.red),
                                                radius: const Radius.circular(10),
                                                thickness: MaterialStateProperty.all<double>(4),
                                                thumbVisibility: MaterialStateProperty.all<bool>(true))),
                                        menuItemStyleData: const MenuItemStyleData(height: 40, padding: EdgeInsets.only(left: 14, right: 14))))
                                .paddingSymmetric(vertical: 5, horizontal: 10),
                            Obx(() => subLoading.isTrue || selectedLot.value == ''
                                ? const SizedBox.shrink()
                                : Center(
                                    child: FIText(
                                      text:
                                          'Inbound Doc Qty: ${productQtyList.firstWhereOrNull((element) => element.lot_id.toString() == selectedLot.value)?.quantity ?? 0}',
                                      textStyle: FITextStyle.xxxsMBold,
                                      textAlign: TextAlign.center,
                                    ).paddingSymmetric(vertical: 10),
                                  )),
                            const Divider(),
                            if (selectedLot.value != '')
                              TextFormField(
                                      style: FITextStyle.xxxs.copyWith(fontWeight: FontWeight.w400),
                                      keyboardType: TextInputType.number,
                                      controller: locationQuantity,
                                      autofocus: true,
                                      autovalidateMode: AutovalidateMode.onUserInteraction,
                                      validator: (value) {
                                        var balanceQty = productQtyList.firstWhereOrNull((element) => element.lot_id.toString() == selectedLot.value)?.quantity ?? 0;
                                        var scannedQty = int.parse(value != null && value != '' ? value.toString() : '0');
                                        if (value == null || value == '' || value == '0') {
                                          return 'Required Quantity';
                                        } else if (scannedQty > balanceQty) {
                                          return 'Entered Qty is greater than Bal. Qty ';
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
                                          focusedBorder:
                                              OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: const BorderSide(color: Colors.blue, width: 3)),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(15.0), borderSide: const BorderSide(color: Colors.black54, width: 3)),
                                          floatingLabelBehavior: FloatingLabelBehavior.auto))
                                  .paddingSymmetric(vertical: 5, horizontal: 10),
                          ],
                        )),
                  ),
                  actions: [
                    Row(children: [
                      Expanded(
                        child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey.shade300, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                                onPressed: () {
                                  if (qtyStockInAlertformKey.currentState?.validate() == true && selectedLot.value != '') {
                                    if (locationQuantity.text != '' && !locationQuantity.text.startsWith('0')) {
                                      submitStockInScannedLocation(
                                          quantity: locationQuantity.text,
                                          moveId: selectedMoveId.value,
                                          transferLineid: selectedTransferLineId.value,
                                          lotId: selectedLot.value,
                                          locationId: locationId);
                                      Get.back();
                                    }
                                  } else {
                                    showSnackBar(message: 'Please Select Inbound Doc & Enter Quantity.');
                                  }
                                },
                                child: Text('Submit', style: TextStyle(color: Colors.grey.shade700, fontSize: 12)))
                            .paddingSymmetric(horizontal: 10),
                      ),
                      Expanded(
                          child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red.shade200, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                                  onPressed: () async {
                                    isLoading(true);
                                    locationList([]);
                                    appCtrl.resetScanData();
                                    locationQuantity.text = '';
                                    Get.back();
                                    checkStockInBalanceQuantity();
                                    isLoading(false);
                                  },
                                  child: Text('Cancel', style: TextStyle(color: Colors.grey.shade700, fontSize: 12)))
                              .paddingSymmetric(horizontal: 10))
                    ])
                  ]));
        });
  }
}
