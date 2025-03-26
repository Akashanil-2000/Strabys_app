import 'package:css_stranbys/src/Delivery%20Order/delivery_order_controller.dart';
import 'package:css_stranbys/src/Shared/model/delivery_location_model.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_empty_state.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_loader_indicator.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_scaffold.dart';
import 'package:css_stranbys/src/shared/util/theme/theme_constant.dart';
import 'package:css_stranbys/src/shared/widgets/fi_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ProductListDeliveryScreen extends GetView<DeliveryOrderController> {
  const ProductListDeliveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => FIScaffold(
        heading: 'Delivery Order',
        onback: () async {
          controller.isLoading(true);
          // await controller.getSingleRecord(id: controller.orderId.value);
          controller.deliveryLocationList([]);
          DeliveryLocationModel? response = await controller.apiService.getDeliveryListSingle(orderId: controller.orderId.value);
          if (response != null && response.result?.location_details != null && response.result!.location_details!.isNotEmpty) {
            controller.deliveryLocationList.addAll(response.result!.location_details!);
          }

          controller.appCtrl.resetScanData();
          controller.resetSearch();
          controller.isLoading(false);
        },
        customSuffixIcon: const Icon(Icons.delivery_dining, color: Colors.white, size: 40),
        title: controller.GRNNo.value,
        child: Column(children: [
          controller.appCtrl.buildSearchField(search_controller: controller.locationProductSearchkey),
          _buildScreen(),
        ])));
  }

  _buildScreen() => Obx(() => controller.isLoading.isTrue
      ? const FILoaderIndicator()
      : Column(
          children: [
            if ((controller.isSearching.isTrue && controller.deliveryProductSearchList.isEmpty) || (controller.isSearching.isFalse && controller.deliveryProductList.isEmpty)) ...[
              const FIEmptyState(title: 'No pending product list found.')
            ] else ...[
              if (controller.isSearching.isTrue) ...[
                for (var index = 0; index < controller.deliveryProductSearchList.length; index++) ...[
                  Bounceable(
                    onTap: () async {
                      controller.productDetailIndex(index);

                      controller.getQtyDialog(Get.context!,
                          delivery_location_id: controller.deliveryProductSearchList.value[index].delivery_location_id, balanceQty: controller.deliveryProductSearchList.value[index].balance_qty);
                    },
                    child: SizedBox(
                        width: 100.w,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                Center(
                                    child: FIText(text: controller.deliveryProductSearchList.value[index].product_name ?? '', textStyle: FITextStyle.sMBold.copyWith(color: Colors.red))
                                        .paddingOnly(top: 5)),
                                const SizedBox(height: 12),
                                controller.appCtrl.buildKeyValueAlign(key: 'SKU', color: Colors.grey.shade700, value: controller.deliveryProductSearchList.value[index].sku ?? ''),
                                if (controller.deliveryProductSearchList.value[index]?.internal_ref != null && controller.deliveryProductSearchList.value[index]?.internal_ref != '')
                                  controller.appCtrl.buildKeyValueAlign(key: 'Internal Ref', color: Colors.grey.shade700, value: controller.deliveryProductSearchList.value[index].internal_ref ?? ''),
                                controller.appCtrl.buildKeyValueAlign(key: 'IN Doc', color: Colors.grey.shade700, value: controller.deliveryProductSearchList.value[index].boe ?? ''),
                                controller.appCtrl.buildKeyValueAlign(key: 'COO', color: Colors.grey.shade700, value: controller.deliveryProductSearchList.value[index].coo ?? ''),
                                if (controller.deliveryProductSearchList.value[index]?.batch_code != null && controller.deliveryProductSearchList.value[index]?.batch_code != '')
                                  controller.appCtrl.buildKeyValueAlign(key: 'Batch Code', color: Colors.grey.shade700, value: controller.deliveryProductSearchList.value[index].batch_code ?? ''),
                                controller.appCtrl.buildKeyValueAlign(key: 'Actual Qty', color: Colors.grey.shade700, value: '${controller.deliveryProductSearchList.value[index].product_qty ?? ''}'),
                                controller.appCtrl
                                    .buildKeyValueAlign(key: 'SC Qty      ', color: Colors.green.shade700, value: '${controller.deliveryProductSearchList.value[index].scanned_qty ?? ''}'),
                                controller.appCtrl.buildKeyValueAlign(key: 'BLC Qty    ', color: Colors.red.shade700, value: '${controller.deliveryProductSearchList.value[index].balance_qty ?? ''}'),
                              ]).paddingAll(5).paddingSymmetric(vertical: 10),
                            ),
                            Container(
                              width: 130,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
                                  color: controller.deliveryProductSearchList.value[index].balance_qty == 0
                                      ? Colors.green
                                      : ((controller.deliveryProductSearchList.value[index].product_qty ?? 0) - (controller.deliveryProductSearchList.value[index].balance_qty ?? 0)) != 0
                                          ? Colors.orange
                                          : Colors.red.shade800),
                              child: Text(
                                controller.deliveryProductSearchList.value[index].status ?? '',
                                style: FITextStyle.xxxsMBold.copyWith(color: Colors.white),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                              ).paddingSymmetric(vertical: 2),
                            ).paddingAll(3)
                          ],
                        )).paddingSymmetric(vertical: 5),
                  ),
                ],
              ] else ...[
                for (var index = 0; index < controller.deliveryProductList.length; index++) ...[
                  Bounceable(
                    onTap: () async {
                      controller.productDetailIndex(index);

                      controller.getQtyDialog(Get.context!,
                          delivery_location_id: controller.deliveryProductList.value[index].delivery_location_id, balanceQty: controller.deliveryProductList.value[index].balance_qty);
                    },
                    child: SizedBox(
                        width: 100.w,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                Center(child: FIText(text: controller.deliveryProductList.value[index].product_name ?? '', textStyle: FITextStyle.sMBold.copyWith(color: Colors.red))),
                                const SizedBox(height: 12),
                                controller.appCtrl.buildKeyValueAlign(key: 'SKU', color: Colors.grey.shade700, value: controller.deliveryProductList.value[index].sku ?? ''),
                                if (controller.deliveryProductList.value[index]?.internal_ref != null && controller.deliveryProductList.value[index]?.internal_ref != '')
                                  controller.appCtrl.buildKeyValueAlign(key: 'Internal Ref', color: Colors.grey.shade700, value: controller.deliveryProductList.value[index].internal_ref ?? ''),
                                controller.appCtrl.buildKeyValueAlign(key: 'IN Doc', color: Colors.grey.shade700, value: controller.deliveryProductList.value[index].boe ?? ''),
                                controller.appCtrl.buildKeyValueAlign(key: 'COO', color: Colors.grey.shade700, value: controller.deliveryProductList.value[index].coo ?? ''),
                                if (controller.deliveryProductList.value[index]?.batch_code != null && controller.deliveryProductList.value[index]?.batch_code != '')
                                  controller.appCtrl.buildKeyValueAlign(key: 'Batch Code', color: Colors.grey.shade700, value: controller.deliveryProductList.value[index].batch_code ?? ''),
                                controller.appCtrl.buildKeyValueAlign(key: 'Actual Qty', color: Colors.grey.shade700, value: '${controller.deliveryProductList.value[index].product_qty ?? ''}'),
                                controller.appCtrl.buildKeyValueAlign(key: 'SC Qty      ', color: Colors.green.shade700, value: '${controller.deliveryProductList.value[index].scanned_qty ?? ''}'),
                                controller.appCtrl.buildKeyValueAlign(key: 'BLC Qty    ', color: Colors.red.shade700, value: '${controller.deliveryProductList.value[index].balance_qty ?? ''}'),
                              ]).paddingAll(5).paddingSymmetric(vertical: 10),
                            ),
                            Container(
                              width: 130,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
                                  color: controller.deliveryProductList.value[index].balance_qty == 0
                                      ? Colors.green
                                      : ((controller.deliveryProductList.value[index].product_qty ?? 0) - (controller.deliveryProductList.value[index].balance_qty ?? 0)) != 0
                                          ? Colors.orange
                                          : Colors.red.shade800),
                              child: Text(
                                controller.deliveryProductList.value[index].balance_qty == 0
                                    ? 'Completed'
                                    : ((controller.deliveryProductList.value[index].product_qty ?? 0) - (controller.deliveryProductList.value[index].balance_qty ?? 0)) != 0
                                        ? 'Partially Completed'
                                        : 'Pending',
                                style: FITextStyle.xxxsMBold.copyWith(color: Colors.white),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                              ).paddingSymmetric(vertical: 2),
                            ).paddingAll(3)
                          ],
                        )).paddingSymmetric(vertical: 5),
                  ),
                ],
              ]
            ],
            // SizedBox(height: 80.h),
          ],
        ));
}
