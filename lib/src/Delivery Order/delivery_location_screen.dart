import 'package:css_stranbys/src/Delivery%20Order/delivery_order_controller.dart';
import 'package:css_stranbys/src/Shared/util/helper/common_helper.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_empty_state.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_loader_indicator.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_scaffold.dart';
import 'package:css_stranbys/src/shared/util/theme/theme_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class DeliveryLocationScreen extends GetView<DeliveryOrderController> {
  DeliveryLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => FIScaffold(
        heading: 'Delivery Order',
        onback: () {
          controller.orderId('');
          controller.appCtrl.resetScanData();
        },
        customSuffixIcon: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // const Icon(Icons.local_shipping_outlined, color: Colors.white, size: 40),
            // InkWell(
            //     onTap: () async {
            //       // Get.to(() => BarcodeScannerWithoutController());
            //       var image = await controller.appCtrl.openCamera();
            //       if (image != null) {
            //         controller.uploadImageList.add(image);
            //       }
            //     },
            //     child: Icon(Icons.camera_alt, color: Colors.white, size: 40)),
            const SizedBox(width: 10),
            InkWell(onTap: () => controller.appCtrl.getMobileBarcode(context), child: const Icon(Icons.qr_code_scanner_sharp, color: Colors.white, size: 40)),
          ],
        ),
        title: controller.GRNNo.value,
        child: Column(children: [_buildScreen()])));
  }

  _buildScreen() => Obx(() => controller.isLoading.isTrue
      ? const FILoaderIndicator()
      : Column(
          children: [
            if (controller.deliveryLocationList.isEmpty) ...[
              const FIEmptyState(title: 'No pending delivery location list found.')
            ] else ...[
              Obx(() => Row(children: [
                    Expanded(child: Text('${controller.appCtrl.barcodeString.value}\n${controller.appCtrl.scanTime}')),
                    if (controller.appCtrl.barcodeString.value != '') ...[
                      ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade300, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                          onPressed: () {
                            // controller.getLocation(code: controller.appCtrl.barcodeString.value);
                            var foundLocation = false.obs;
                            for (var item in controller.deliveryLocationList.value) {
                              if (item.Location_barcode == controller.appCtrl.barcodeString.value) {
                                foundLocation(true);
                                controller.getDeliveryProductList(locationBarcode: item.Location_barcode, ordrId: controller.orderId.value);
                              }
                            }
                            if (foundLocation.isFalse) {
                              showSnackBar(message: 'Scanned Location Not Found!\nPlease Scan again.');
                            }
                          },
                          icon: Icon(Icons.search, size: 24.0, color: Colors.grey.shade700),
                          label: Text('Fetch Location', style: TextStyle(color: Colors.grey.shade700)))
                    ]
                  ])),
              for (var index = 0; index < controller.deliveryLocationList.length; index++) ...[
                Bounceable(
                  onTap: () async {
                    showSnackBar(message: controller.appCtrl.barcodeString.value != '' ? 'Please Press Fetch Location.' : 'Please Scan Location Barcode');
                  },
                  child: SizedBox(
                      width: 100.w,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                              const SizedBox(height: 12),
                              // controller.appCtrl.buildKeyValueAlign(key: 'ID', value: '${controller.deliveryLocationList.value[index].location_id.toString() ?? ''}'),
                              controller.appCtrl.buildKeyValueAlign(key: 'Name', width: 85, color: Colors.red.shade700, value: controller.deliveryLocationList.value[index].location_name ?? ''),
                              controller.appCtrl.buildKeyValueAlign(key: 'Barcode', width: 85, color: Colors.grey.shade700, value: controller.deliveryLocationList.value[index].Location_barcode ?? ''),


                              Obx(() => controller.appCtrl.buildKeyValueAlign(
                                key: 'SKU',
                                width: 85,
                                color: Colors.grey.shade700,
                                value: controller.locationSKUs[controller.deliveryLocationList.value[index].Location_barcode ?? ''] ?? 'Loading...',
                              )),
                              Obx(() => controller.appCtrl.buildKeyValueAlign(
                                key: 'Internal Ref',
                                width: 85,
                                color: Colors.grey.shade700,
                                value: controller.locationInternalRefs[controller.deliveryLocationList.value[index].Location_barcode ?? ''] ?? 'Loading...',
                              )),

                              controller.appCtrl
                                  .buildKeyValueAlign(key: 'Tot Volume', width: 85, color: Colors.grey.shade700, value: '${controller.deliveryLocationList.value[index].total_volume ?? ''}'),
                              controller.appCtrl
                                  .buildKeyValueAlign(key: 'Tot Weight', width: 85, color: Colors.grey.shade700, value: '${controller.deliveryLocationList.value[index].total_weight ?? ''}'),
                              controller.appCtrl.buildKeyValueAlign(key: 'Tot Qty', width: 85, color: Colors.grey.shade700, value: '${controller.deliveryLocationList.value[index].total_qty ?? ''}'),
                              controller.appCtrl
                                  .buildKeyValueAlign(key: 'Scn Qty', width: 85, color: Colors.green.shade700, value: '${controller.deliveryLocationList.value[index].completed_qty ?? ''}'),
                            ]).paddingAll(5).paddingSymmetric(vertical: 10),
                          ),
                          Container(
                            width: 130,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(topRight: Radius.circular(8), bottomLeft: Radius.circular(8)),
                                color: controller.deliveryLocationList.value[index].completed_qty == controller.deliveryLocationList.value[index].total_qty
                                    ? Colors.green
                                    : controller.deliveryLocationList.value[index].completed_qty == 0
                                        ? Colors.red.shade800
                                        : Colors.orange),
                            child: Text(
                              controller.deliveryLocationList.value[index].completed_qty == controller.deliveryLocationList.value[index].total_qty
                                  ? 'Completed'
                                  : controller.deliveryLocationList.value[index].completed_qty == 0
                                      ? 'Pending'
                                      : ((controller.deliveryLocationList.value[index].completed_qty ?? 0) > 0.0 &&
                                              (controller.deliveryLocationList.value[index].completed_qty ?? 0) < (controller.deliveryLocationList.value[index].total_qty ?? 0))
                                          ? 'Partially Completed'
                                          : '',

                              // '${controller.deliveryLocationList.value[index]?.order_qty ?? 0}',
                              style: FITextStyle.xxxsMBold.copyWith(color: Colors.white),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ).paddingSymmetric(vertical: 2),
                          ).paddingAll(5)
                        ],
                      )).paddingSymmetric(vertical: 5),
                ),
              ],
            ],
            // SizedBox(height: 80.h),
          ],
        ));
}
