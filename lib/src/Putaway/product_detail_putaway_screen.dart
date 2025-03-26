import 'package:css_stranbys/src/Putaway/putaway_controller.dart';
import 'package:css_stranbys/src/Shared/model/location_model.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_empty_state.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_loader_indicator.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_scaffold.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../Shared/util/theme/theme_constant.dart';

class ProductDetailPutawayScreen extends GetView<PutawayController> {
  const ProductDetailPutawayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => FIScaffold(
        heading: 'Put away',
        floatingWidget: Obx(() => controller.productData.length == 1
            ? const SizedBox()
            : Container(
                color: Colors.grey.shade100,
                height: 50,
                child: Row(children: [
                  controller.productDetailIndex.value == 0
                      ? const SizedBox()
                      : Expanded(
                          child: Bounceable(
                            onTap: () {
                              if (controller.scannedLocation.isNotEmpty) {
                                var isPending = false.obs;
                                controller.scannedLocation.forEach((element) {
                                  if (element.status == 'Pending') {
                                    isPending(true);
                                  }
                                });

                                if (isPending.isTrue) {
                                  controller.getConfirmationDialog(Get.context!,
                                      confirmTitle: 'Continue',
                                      message: 'This action will lose all the unsaved scanned records.\nDo you want to continue?', onSubmit: () {
                                    controller.productDetailIndex(controller.productDetailIndex.value - 1);

                                    if (controller.productData.value[controller.productDetailIndex.value]?.order_qty ==
                                        controller.productData.value[controller.productDetailIndex.value]?.scanned_qty) {
                                      controller.productDetailStatus('Completed');
                                    } else if (controller.productData.value[controller.productDetailIndex.value]?.scanned_qty == 0.0) {
                                      controller.productDetailStatus('Pending');
                                    } else if (controller.productData.value[controller.productDetailIndex.value]?.scanned_qty > 0.0 &&
                                        controller.productData.value[controller.productDetailIndex.value]?.scanned_qty <
                                            controller.productData.value[controller.productDetailIndex.value]?.order_qty) {
                                      controller.productDetailStatus('Shortage');
                                    } else if (controller.productData.value[controller.productDetailIndex.value]?.scanned_qty >
                                        controller.productData.value[controller.productDetailIndex.value]?.order_qty) {
                                      controller.productDetailStatus('Excess');
                                    }
                                    controller.appCtrl.resetScanData();
                                    controller.locationDetails(const LocationDetails());
                                    controller.getScannedLocation(
                                        pickingId: controller.productData.value[controller.productDetailIndex.value]?.picking_id,
                                        productId: controller.productData.value[controller.productDetailIndex.value]?.product_id,
                                        moveId: controller.productData.value[controller.productDetailIndex.value]?.move_id);
                                  });
                                } else {
                                  controller.productDetailIndex(controller.productDetailIndex.value - 1);

                                  if (controller.productData.value[controller.productDetailIndex.value]?.order_qty ==
                                      controller.productData.value[controller.productDetailIndex.value]?.scanned_qty) {
                                    controller.productDetailStatus('Completed');
                                  } else if (controller.productData.value[controller.productDetailIndex.value]?.scanned_qty == 0.0) {
                                    controller.productDetailStatus('Pending');
                                  } else if (controller.productData.value[controller.productDetailIndex.value]?.scanned_qty > 0.0 &&
                                      controller.productData.value[controller.productDetailIndex.value]?.scanned_qty <
                                          controller.productData.value[controller.productDetailIndex.value]?.order_qty) {
                                    controller.productDetailStatus('Shortage');
                                  } else if (controller.productData.value[controller.productDetailIndex.value]?.scanned_qty >
                                      controller.productData.value[controller.productDetailIndex.value]?.order_qty) {
                                    controller.productDetailStatus('Excess');
                                  }
                                  controller.appCtrl.resetScanData();
                                  controller.locationDetails(const LocationDetails());
                                  controller.getScannedLocation(
                                      pickingId: controller.productData.value[controller.productDetailIndex.value]?.picking_id,
                                      productId: controller.productData.value[controller.productDetailIndex.value]?.product_id,
                                      moveId: controller.productData.value[controller.productDetailIndex.value]?.move_id);
                                }
                              } else {
                                controller.productDetailIndex(controller.productDetailIndex.value - 1);

                                if (controller.productData.value[controller.productDetailIndex.value]?.order_qty ==
                                    controller.productData.value[controller.productDetailIndex.value]?.scanned_qty) {
                                  controller.productDetailStatus('Completed');
                                } else if (controller.productData.value[controller.productDetailIndex.value]?.scanned_qty == 0.0) {
                                  controller.productDetailStatus('Pending');
                                } else if (controller.productData.value[controller.productDetailIndex.value]?.scanned_qty > 0.0 &&
                                    controller.productData.value[controller.productDetailIndex.value]?.scanned_qty <
                                        controller.productData.value[controller.productDetailIndex.value]?.order_qty) {
                                  controller.productDetailStatus('Shortage');
                                } else if (controller.productData.value[controller.productDetailIndex.value]?.scanned_qty >
                                    controller.productData.value[controller.productDetailIndex.value]?.order_qty) {
                                  controller.productDetailStatus('Excess');
                                }
                                controller.appCtrl.resetScanData();
                                controller.locationDetails(const LocationDetails());
                                controller.getScannedLocation(
                                    pickingId: controller.productData.value[controller.productDetailIndex.value]?.picking_id,
                                    productId: controller.productData.value[controller.productDetailIndex.value]?.product_id,
                                    moveId: controller.productData.value[controller.productDetailIndex.value]?.move_id);
                              }
                            },
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.grey),
                              child: Row(
                                children: [
                                  const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white).paddingSymmetric(horizontal: 10),
                                  Expanded(
                                      child: Text(
                                    'Previous',
                                    style: FITextStyle.xxsMBold.copyWith(color: Colors.white),
                                    textAlign: TextAlign.left,
                                  )),
                                ],
                              ),
                            ).paddingSymmetric(horizontal: 15),
                          ),
                        ),
                  controller.productDetailIndex.value == (controller.productData.length - 1)
                      ? const SizedBox()
                      : Expanded(
                          child: Bounceable(
                            onTap: () {
                              if (controller.scannedLocation.isNotEmpty) {
                                var isPending = false.obs;
                                controller.scannedLocation.forEach((element) {
                                  if (element.status == 'Pending') {
                                    isPending(true);
                                  }
                                });

                                if (isPending.isTrue) {
                                  controller.getConfirmationDialog(Get.context!,
                                      confirmTitle: 'Continue',
                                      message: 'This action will lose all the unsaved scanned records.\nDo you want to continue?', onSubmit: () {
                                    controller.productDetailIndex(controller.productDetailIndex.value + 1);

                                    if (controller.productData.value[controller.productDetailIndex.value]?.order_qty ==
                                        controller.productData.value[controller.productDetailIndex.value]?.scanned_qty) {
                                      controller.productDetailStatus('Completed');
                                    } else if (controller.productData.value[controller.productDetailIndex.value]?.scanned_qty == 0.0) {
                                      controller.productDetailStatus('Pending');
                                    } else if (controller.productData.value[controller.productDetailIndex.value]?.scanned_qty > 0.0 &&
                                        controller.productData.value[controller.productDetailIndex.value]?.scanned_qty <
                                            controller.productData.value[controller.productDetailIndex.value]?.order_qty) {
                                      controller.productDetailStatus('Shortage');
                                    } else if (controller.productData.value[controller.productDetailIndex.value]?.scanned_qty >
                                        controller.productData.value[controller.productDetailIndex.value]?.order_qty) {
                                      controller.productDetailStatus('Excess');
                                    }
                                    controller.appCtrl.resetScanData();
                                    controller.locationDetails(const LocationDetails());
                                    controller.getScannedLocation(
                                        pickingId: controller.productData.value[controller.productDetailIndex.value]?.picking_id,
                                        productId: controller.productData.value[controller.productDetailIndex.value]?.product_id,
                                        moveId: controller.productData.value[controller.productDetailIndex.value]?.move_id);
                                  });
                                } else {
                                  controller.productDetailIndex(controller.productDetailIndex.value + 1);

                                  if (controller.productData.value[controller.productDetailIndex.value]?.order_qty ==
                                      controller.productData.value[controller.productDetailIndex.value]?.scanned_qty) {
                                    controller.productDetailStatus('Completed');
                                  } else if (controller.productData.value[controller.productDetailIndex.value]?.scanned_qty == 0.0) {
                                    controller.productDetailStatus('Pending');
                                  } else if (controller.productData.value[controller.productDetailIndex.value]?.scanned_qty > 0.0 &&
                                      controller.productData.value[controller.productDetailIndex.value]?.scanned_qty <
                                          controller.productData.value[controller.productDetailIndex.value]?.order_qty) {
                                    controller.productDetailStatus('Shortage');
                                  } else if (controller.productData.value[controller.productDetailIndex.value]?.scanned_qty >
                                      controller.productData.value[controller.productDetailIndex.value]?.order_qty) {
                                    controller.productDetailStatus('Excess');
                                  }
                                  controller.appCtrl.resetScanData();
                                  controller.locationDetails(const LocationDetails());
                                  controller.getScannedLocation(
                                      pickingId: controller.productData.value[controller.productDetailIndex.value]?.picking_id,
                                      productId: controller.productData.value[controller.productDetailIndex.value]?.product_id,
                                      moveId: controller.productData.value[controller.productDetailIndex.value]?.move_id);
                                }
                              } else {
                                controller.productDetailIndex(controller.productDetailIndex.value + 1);

                                if (controller.productData.value[controller.productDetailIndex.value]?.order_qty ==
                                    controller.productData.value[controller.productDetailIndex.value]?.scanned_qty) {
                                  controller.productDetailStatus('Completed');
                                } else if (controller.productData.value[controller.productDetailIndex.value]?.scanned_qty == 0.0) {
                                  controller.productDetailStatus('Pending');
                                } else if (controller.productData.value[controller.productDetailIndex.value]?.scanned_qty > 0.0 &&
                                    controller.productData.value[controller.productDetailIndex.value]?.scanned_qty <
                                        controller.productData.value[controller.productDetailIndex.value]?.order_qty) {
                                  controller.productDetailStatus('Shortage');
                                } else if (controller.productData.value[controller.productDetailIndex.value]?.scanned_qty >
                                    controller.productData.value[controller.productDetailIndex.value]?.order_qty) {
                                  controller.productDetailStatus('Excess');
                                }
                                controller.appCtrl.resetScanData();
                                controller.locationDetails(const LocationDetails());
                                controller.getScannedLocation(
                                    pickingId: controller.productData.value[controller.productDetailIndex.value]?.picking_id,
                                    productId: controller.productData.value[controller.productDetailIndex.value]?.product_id,
                                    moveId: controller.productData.value[controller.productDetailIndex.value]?.move_id);
                              }
                            },
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.green),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                    'Next',
                                    style: FITextStyle.xxsMBold.copyWith(color: Colors.white),
                                    textAlign: TextAlign.right,
                                  )),
                                  const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white).paddingSymmetric(horizontal: 10),
                                ],
                              ),
                            ).paddingSymmetric(horizontal: 15),
                          ),
                        ),
                ]).paddingSymmetric(horizontal: 10),
              )),
        customSuffixIcon: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(width: 10),
            InkWell(
                onTap: () {
                  controller.appCtrl.getMobileBarcode(context);
                },
                child: const Icon(Icons.qr_code_scanner_sharp, color: Colors.white, size: 40)),
          ],
        ),
        title: '${controller.singlePackingData.first.grn_name ?? ''}',
        onback: () => controller.getProductList(id: controller.productData.value[controller.productDetailIndex.value]?.picking_id),
        child: Column(children: [_buildScreen()])));
  }

  _buildScreen() => Obx(() => controller.isLoading.isTrue
      ? const FILoaderIndicator()
      : controller.productDetailIndex.value < controller.productData.length
          ? Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: FIText(
                        text: controller.productData.value[controller.productDetailIndex.value]?.name,
                        textAlign: TextAlign.center,
                        textStyle: FITextStyle.mMBold.copyWith(color: Colors.red),
                      ),
                    ),
                    Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: (controller.productDetailStatus.value == 'Completed')
                                  ? Colors.green.shade700
                                  : (controller.productDetailStatus.value == 'Pending')
                                      ? Colors.yellow.shade800
                                      : (controller.productDetailStatus.value == 'Shortage')
                                          ? Colors.blue.shade400
                                          : (controller.productDetailStatus.value == 'Excess')
                                              ? Colors.red.shade600
                                              : Colors.transparent,
                            ),
                            child: Text(
                              controller.productData.value[controller.productDetailIndex.value]?.order_qty ==
                                      controller.productData.value[controller.productDetailIndex.value]?.scanned_qty
                                  ? 'Completed'
                                  : controller.productData.value[controller.productDetailIndex.value]?.scanned_qty == 0.0
                                      ? 'Pending'
                                      : controller.productData.value[controller.productDetailIndex.value]?.scanned_qty > 0.0 &&
                                              controller.productData.value[controller.productDetailIndex.value]?.scanned_qty <
                                                  controller.productData.value[controller.productDetailIndex.value]?.order_qty
                                          ? 'Shortage'
                                          : controller.productData.value[controller.productDetailIndex.value]?.scanned_qty >
                                                  controller.productData.value[controller.productDetailIndex.value]?.order_qty
                                              ? 'Excess'
                                              : '',
                              style: FITextStyle.xxxsMBold.copyWith(color: Colors.white),
                            ).paddingAll(5))
                        .paddingSymmetric(horizontal: 3)
                  ],
                ),
                const Divider(),
                if (controller.productData.isNotEmpty) ...[
                  controller.appCtrl.buildKeyValueAlign(width: 100, key: 'SKU', value: '${controller.productData.value[controller.productDetailIndex.value]?.sku ?? ''}'),
                  controller.appCtrl.buildKeyValueAlign(
                      width: 100,
                      color: Colors.grey.shade900,
                      key: 'COO',
                      value: '${controller.productData.value[controller.productDetailIndex.value].country_of_origin ?? ''}'),
                  if (controller.productData.value[controller.productDetailIndex.value]?.batch_code != null &&
                      controller.productData.value[controller.productDetailIndex.value]?.batch_code != '')
                    controller.appCtrl.buildKeyValueAlign(
                        width: 100,
                        color: Colors.grey.shade900,
                        key: 'Batch Code',
                        value: '${controller.productData.value[controller.productDetailIndex.value].batch_code ?? ''}'),
                  if (controller.productData.value[controller.productDetailIndex.value]?.internal_ref != null &&
                      controller.productData.value[controller.productDetailIndex.value]?.internal_ref != '')
                    controller.appCtrl.buildKeyValueAlign(
                        width: 100,
                        color: Colors.grey.shade900,
                        key: 'Internal Reference',
                        value: '${controller.productData.value[controller.productDetailIndex.value]?.internal_ref ?? ''}'),
                  controller.appCtrl
                      .buildKeyValueAlign(width: 100, key: 'Total Qty', value: '${controller.productData.value[controller.productDetailIndex.value]?.order_qty ?? ''}'),
                  Row(children: [
                    SizedBox(width: 100, child: Text('Scanned Qty ', style: FITextStyle.xsMBold.copyWith(fontWeight: FontWeight.w500)).paddingSymmetric(horizontal: 3)),
                    Text(':  ', style: FITextStyle.xsMBold.copyWith(fontWeight: FontWeight.w500)),
                    Expanded(
                      child: Text(
                        '${controller.productData.value[controller.productDetailIndex.value]?.scanned_qty ?? ''}',
                        style: FITextStyle.sMBold.copyWith(color: Colors.green.shade800, fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                    )
                  ]),
                  Row(children: [
                    SizedBox(width: 100, child: Text('Balance Qty ', style: FITextStyle.xsMBold.copyWith(fontWeight: FontWeight.w500)).paddingSymmetric(horizontal: 3)),
                    Text(':  ', style: FITextStyle.xsMBold.copyWith(fontWeight: FontWeight.w500)),
                    Expanded(
                      child: Text(
                        '${controller.productData.value[controller.productDetailIndex.value]?.balance_qty ?? ''}',
                        style: FITextStyle.sMBold.copyWith(color: Colors.red.shade800, fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                    )
                  ]),
                  const Divider(),
                ],
                const SizedBox(height: 10),
                Obx(() => Row(children: [
                      Expanded(child: Text('${controller.appCtrl.barcodeString.value ?? ''}\n${controller.appCtrl.scanTime ?? ''}')),
                      if (controller.appCtrl.barcodeString.value != '') ...[
                        ElevatedButton.icon(
                            style:
                                ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade300, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                            onPressed: () {
                              controller.getLocation(code: controller.appCtrl.barcodeString.value);
                            },
                            icon: Icon(Icons.search, size: 24.0, color: Colors.grey.shade700),
                            label: Text('Fetch Location', style: TextStyle(color: Colors.grey.shade700)))
                      ]
                    ])),
                if (controller.scannedLocation.isNotEmpty) ...[
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Table(
                      border: TableBorder.all(color: Colors.black),
                      children: [
                        TableRow(children: [
                          Center(
                              child: Text(
                            'Location',
                            style: FITextStyle.xsMBold.copyWith(color: Colors.red),
                          ).paddingSymmetric(vertical: 3)),
                          Center(child: Text('Quantity', style: FITextStyle.xsMBold.copyWith(color: Colors.red)).paddingSymmetric(vertical: 3)),
                          Center(child: Text('Status', style: FITextStyle.xsMBold.copyWith(color: Colors.red)).paddingSymmetric(vertical: 3)),
                        ]),
                        for (var i = 0; i < controller.scannedLocation.length; i++) ...[
                          _buildScannedData(
                              location: controller.scannedLocation.value[i]?.name ?? '',
                              quantity: controller.scannedLocation.value[i]?.quantity ?? '',
                              status: controller.scannedLocation.value[i]?.status ?? '',
                              index: i),
                        ],
                      ],
                    ).paddingAll(20),
                  ),
                  ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          ),
                          onPressed: () {
                            controller.submitScannedLocation(
                              pickingId: controller.productData.value[controller.productDetailIndex.value]?.picking_id,
                              moveId: controller.productData.value[controller.productDetailIndex.value]?.move_id,
                              productId: controller.productData.value[controller.productDetailIndex.value]?.product_id,
                              packingLineId: controller.productData.value[controller.productDetailIndex.value]?.packing_list_line_id,
                              totalQty: controller.productData.value[controller.productDetailIndex.value]?.order_qty,
                            );
                          },
                          icon: const Icon(Icons.send, size: 24.0, color: Colors.white).paddingOnly(left: 10),
                          label: const Text('Submit', style: TextStyle(color: Colors.white)).paddingSymmetric(horizontal: 10))
                      .paddingSymmetric(vertical: 25)
                ] else ...[
                  if (controller.locationDetails.value.id == null || controller.locationDetails.value.id == 0) ...[
                    const FIEmptyState(title: 'No location found. Please Scan & Fetch .. ')
                  ]
                ],
                SizedBox(height: 20.h),
              ],
            )
          : const SizedBox.shrink());

  _buildScannedData({location, quantity, status, index}) => TableRow(children: [
        Text('$location', style: FITextStyle.xxsMBold, textAlign: TextAlign.center).paddingSymmetric(vertical: 3),
        Text(
          '$quantity',
          style: FITextStyle.xxsMBold,
          textAlign: TextAlign.center,
        ).paddingSymmetric(vertical: 3),
        InkWell(
            onTap: () {
              controller.getConfirmationDialog(Get.context!, message: 'Are you sure? Delete Scanned Record ? ', confirmTitle: 'Delete', onSubmit: () {
                controller.scannedLocation.removeAt(index);
                Get.back();
              });
            },
            child: Row(children: [
              Expanded(
                child: Text(
                  '${status ?? ''}',
                  style: FITextStyle.xxsMBold.copyWith(color: status == 'Completed' ? Colors.green.shade600 : Colors.yellow.shade800),
                  textAlign: TextAlign.center,
                ).paddingSymmetric(vertical: 3),
              ),
              if (status == 'Pending') Icon(Icons.remove_circle, color: Colors.red.shade600, size: 15).paddingOnly(right: 2)
            ]))
      ]);
}
