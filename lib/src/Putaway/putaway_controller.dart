import 'package:css_stranbys/src/Putaway/product_list_putaway_screen.dart';
import 'package:css_stranbys/src/Putaway/single_putaway_screen.dart';
import 'package:css_stranbys/src/Shared/app_settings_controller.dart';
import 'package:css_stranbys/src/Shared/model/location_model.dart';
import 'package:css_stranbys/src/Shared/model/recieve_model.dart';
import 'package:css_stranbys/src/Shared/model/recieve_product_list_model.dart';
import 'package:css_stranbys/src/Shared/model/recieve_single_model.dart';
import 'package:css_stranbys/src/Shared/model/scanned_location_model.dart';
import 'package:css_stranbys/src/Shared/model/submit_model.dart';
import 'package:css_stranbys/src/Shared/util/helper/common_helper.dart';
import 'package:css_stranbys/src/shared/util/theme/theme_constant.dart';
import 'package:css_stranbys/src/shared/widgets/fi_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Shared/base_service.dart';

class PutawayController extends GetxController {
  var isLoading = false.obs;

  var appCtrl = Get.find<AppSettingsController>();
  var apiService = CommonAPIService();
  var packingData = [].obs;
  var singlePackingData = [].obs;
  var productData = [].obs;

  var locationDetails = const LocationDetails().obs;

  var productDetailStatus = ''.obs;
  var productDetailIndex = 0.obs;

  var locationQuantity = TextEditingController();

  var scannedLocation = <LocationDetails>[].obs;

  var packingSearchData = [].obs;
  var Searchkey = TextEditingController();
  var ProductSearchkey = TextEditingController();
  var productSearchData = [].obs;
  var isSearching = false.obs;

  @override
  void onInit() {
    super.onInit();
    initialise();
    Searchkey.addListener(() {
      search(Searchkey.text);
      return;
    });
    ProductSearchkey.addListener(() {
      searchProduct(ProductSearchkey.text);
      return;
    });
  }

  searchProduct(value) {
    if (value != null && value != '') {
      isSearching(true);
      isLoading(true);
      productSearchData([]);
      productData.value.forEach((element) {
        try {
          value = value.toString().toLowerCase();
          if (element.name.toString().toLowerCase().contains(value) ||
              element.sku.toString().toLowerCase().contains(value) ||
              element.country_of_origin.toString().toLowerCase().contains(value) ||
              element.batch_code.toString().toLowerCase().contains(value)) {
            productSearchData.add(element);
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

  search(value) {
    if (value != null && value != '') {
      isSearching(true);
      isLoading(true);
      packingSearchData([]);
      packingData.value.forEach((element) {
        try {
          value = value.toString().toLowerCase();
          if (element.name.toString().toLowerCase().contains(value) ||
              element.customer_name.toString().toLowerCase().contains(value) ||
              element.inbounding_no.toString().toLowerCase().contains(value)) {
            packingSearchData.add(element);
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
    Searchkey.text = '';
    ProductSearchkey.text = '';
    isLoading(false);
    isSearching(false);
    packingSearchData([]);
    productSearchData([]);
  }

  initialise() async {
    try {
      isLoading(true);
      packingData([]);
      RecieveModel? response = await apiService.getPutAway();
      if (response != null && response.result?.packing_data != null && response.result!.packing_data!.isNotEmpty) {
        packingData.addAll(response.result!.packing_data!);
      }
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }

  getSingleRecord({id}) async {
    try {
      isLoading(true);
      singlePackingData([]);
      RecieveSingleModel? response = await apiService.getPutawayListSingle(packingId: id);
      if (response != null && response.result?.packing_data != null && response.result!.packing_data!.isNotEmpty) {
        singlePackingData.addAll(response.result!.packing_data!);
        Get.to(() => const SinglePutawayScreen());
        resetSearch();
      }
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }

  getProductList({id, reRoute = true}) async {
    try {
      isLoading(true);
      productData([]);
      RecieveProductListModel? response = await apiService.getRecieveProductList(pickingId: id);
      if (response != null && response.result?.packing_data != null && response.result!.packing_data!.isNotEmpty) {
        productData.addAll(response.result!.packing_data!);
        if (reRoute == true) {
          Get.to(() => const ProductListPutawayScreen());
        }
      }
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }

  getLocation({code}) async {
    try {
      isLoading(true);
      locationDetails(const LocationDetails());
      LocationModel? response = await apiService.getBarcodeLocation(barcode: code);
      if (response != null &&
          response.result?.status == 200 &&
          response.result?.response == 'Success' &&
          response.result?.location_details != null &&
          response.result?.location_details?.id != null &&
          response.result?.location_details?.id != '') {
        locationDetails(response.result?.location_details);
        getQtyDialog(Get.context!);
      } else if (response?.result?.status != 200) {
        showSnackBar(message: 'Location Not Found.');
      }
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }

  getScannedLocation({pickingId, productId, moveId}) async {
    try {
      isLoading(true);
      scannedLocation([]);
      locationDetails(const LocationDetails());
      ScannedLocationModel? response = await apiService.getScannedLocation(pickingId: pickingId, productId: productId, moveId: moveId);
      if (response != null && response.result?.status == 200 && response.result?.packing_data != null && response.result!.packing_data!.isNotEmpty) {
        for (var item in response.result!.packing_data!) {
          scannedLocation.add(LocationDetails(id: item?.location_id ?? 0, name: '${item?.location_name ?? ''}', quantity: '${item?.qty ?? ''}', status: 'Completed'));
        }
      }
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }

  submitScannedLocation({pickingId, moveId, productId, packingLineId, totalQty}) async {
    try {
      isLoading(true);
      List lineIdsList = [];

      if (scannedLocation.isNotEmpty && totalQty > 0) {
        var scannedQty = 0.00;
        var pendingQty = 0.00;
        scannedLocation.forEach((element) {
          if (element.status == 'Pending') {
            lineIdsList.add({"qty": element.quantity, "dest_location_id": element.id});
            pendingQty = pendingQty + double.parse(element?.quantity ?? '0.00');
          } else {
            scannedQty = scannedQty + double.parse(element?.quantity ?? '0.00');
          }
        });

        var total = pendingQty + scannedQty;

        if (lineIdsList.isNotEmpty) {
          if (total > totalQty) {
            getConfirmationDialog(Get.context!, message: 'Are you sure ?\nYou want to submit excess quantity ?', onSubmit: () async {
              Get.back();
              SubmitModel? response =
                  await apiService.submitScannedLocation(pickingId: pickingId, productId: productId, moveId: moveId, lineIds: lineIdsList, packingLineId: packingLineId);
              if (response != null && response.result?.status == 200) {
                showSnackBar(message: 'Successfully Submitted!');
                getScannedLocation(
                    moveId: productData.value[productDetailIndex.value]?.move_id,
                    pickingId: productData.value[productDetailIndex.value]?.picking_id,
                    productId: productData.value[productDetailIndex.value]?.product_id);
                getProductList(id: productData.value[productDetailIndex.value]?.picking_id, reRoute: false);
              }
            });
          } else {
            SubmitModel? response =
                await apiService.submitScannedLocation(pickingId: pickingId, productId: productId, moveId: moveId, lineIds: lineIdsList, packingLineId: packingLineId);
            if (response != null && response.result?.status == 200) {
              showSnackBar(message: 'Successfully Submitted!');
              getScannedLocation(
                  moveId: productData.value[productDetailIndex.value]?.move_id,
                  pickingId: productData.value[productDetailIndex.value]?.picking_id,
                  productId: productData.value[productDetailIndex.value]?.product_id);
              getProductList(id: productData.value[productDetailIndex.value]?.picking_id, reRoute: false);
            }
          }
        } else {
          showSnackBar(message: 'No Pending Scanned Data Found !');
        }
      }
    } catch (e) {
      showSnackBar(message: 'Something went wrong');
    } finally {
      isLoading(false);
    }
  }

  final _formKey = GlobalKey<FormState>();

  getQtyDialog(BuildContext context) async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return WillPopScope(
            onWillPop: () async {
              return false;
            },
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
                        controller: locationQuantity,
                        autofocus: true,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value == null || value == '' || value == '0') {
                            return 'Required Quantity';
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
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: const BorderSide(color: Colors.black54, width: 3)),
                            floatingLabelBehavior: FloatingLabelBehavior.auto))
                    .paddingSymmetric(vertical: 5, horizontal: 10),
              ),
              actions: [
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                              style:
                                  ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade300, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                              onPressed: () {
                                if (_formKey.currentState?.validate() == true) {
                                  if (locationQuantity.text != '' && !locationQuantity.text.startsWith('0')) {
                                    scannedLocation.add(LocationDetails(
                                        id: locationDetails.value.id ?? 0, name: locationDetails.value.name ?? "", quantity: locationQuantity.text, status: 'Pending'));
                                    appCtrl.resetScanData();
                                    locationDetails(const LocationDetails());
                                    locationQuantity.text = '';
                                    Get.back();
                                  }
                                }
                              },
                              child: Text('Apply', style: TextStyle(color: Colors.grey.shade700, fontSize: 11)))
                          .paddingSymmetric(horizontal: 10),
                    ),
                    Expanded(
                      child: ElevatedButton(
                              style:
                                  ElevatedButton.styleFrom(backgroundColor: Colors.red.shade200, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                              onPressed: () {
                                appCtrl.resetScanData();
                                locationDetails(const LocationDetails());
                                locationQuantity.text = '';
                                Get.back();
                              },
                              child: Text('Cancel', style: TextStyle(color: Colors.grey.shade700, fontSize: 11)))
                          .paddingSymmetric(horizontal: 10),
                    ),
                  ],
                )
              ],
            ),
          );
        });
  }

  getConfirmationDialog(BuildContext context, {message, onSubmit, confirmTitle}) async {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return WillPopScope(
            onWillPop: () async {
              return true;
            },
            child: AlertDialog(
              contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              titlePadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.green.shade300, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                          onPressed: onSubmit ?? () {},
                          child: Text(
                            confirmTitle ?? 'Submit',
                            style: TextStyle(color: Colors.grey.shade700, fontSize: 11),
                            maxLines: 1,
                          )).paddingSymmetric(horizontal: 10),
                    ),
                    Expanded(
                      child: ElevatedButton(
                              style:
                                  ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade200, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                              onPressed: () {
                                Get.back();
                              },
                              child: Text('Cancel', style: TextStyle(color: Colors.grey.shade700, fontSize: 11)))
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
