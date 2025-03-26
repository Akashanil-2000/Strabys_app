import 'package:css_stranbys/src/Putaway/product_detail_putaway_screen.dart';
import 'package:css_stranbys/src/Putaway/putaway_controller.dart';
import 'package:css_stranbys/src/Shared/model/location_model.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_empty_state.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_loader_indicator.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../Shared/util/theme/theme_constant.dart';

class ProductListPutawayScreen extends GetView<PutawayController> {
  const ProductListPutawayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => FIScaffold(
        heading: 'Put away',
        customSuffixIcon: const Icon(Icons.local_shipping_outlined, color: Colors.white, size: 40),
        title: '${controller.singlePackingData.first.grn_name ?? ''}',
        child: Column(children: [controller.appCtrl.buildSearchField(search_controller: controller.ProductSearchkey), _buildScreen()])));
  }

  _buildScreen() => Obx(() => controller.isLoading.isTrue
      ? const FILoaderIndicator()
      : Column(children: [
          if ((controller.isSearching.isTrue && controller.productSearchData.isEmpty) || (controller.isSearching.isFalse && controller.productData.isEmpty)) ...[
            const FIEmptyState(
              title: 'No pending Putaway list found.',
            )
          ] else ...[
            if (controller.isSearching.isTrue) ...[
              for (var index = 0; index < controller.productSearchData.length; index++) ...[
                Bounceable(
                    onTap: () async {
                      controller.productDetailIndex(index);
                      if (controller.productSearchData.value[index]?.order_qty == controller.productSearchData.value[index]?.scanned_qty) {
                        controller.productDetailStatus('Completed');
                      } else if (controller.productSearchData.value[index]?.scanned_qty == 0.0) {
                        controller.productDetailStatus('Pending');
                      } else if (controller.productSearchData.value[index]?.scanned_qty > 0.0 &&
                          controller.productSearchData.value[index]?.scanned_qty < controller.productSearchData.value[index]?.order_qty) {
                        controller.productDetailStatus('Shortage');
                      } else if (controller.productSearchData.value[index]?.scanned_qty > controller.productSearchData.value[index]?.order_qty) {
                        controller.productDetailStatus('Excess');
                      }
                      controller.appCtrl.resetScanData();
                      controller.locationDetails(const LocationDetails());
                      await controller.getScannedLocation(
                          moveId: controller.productSearchData.value[index]?.move_id,
                          pickingId: controller.productSearchData.value[index]?.picking_id,
                          productId: controller.productSearchData.value[index]?.product_id);
                      Get.to(() => const ProductDetailPutawayScreen());
                    },
                    child: SizedBox(
                        width: 100.w,
                        child: Stack(alignment: Alignment.topRight, children: [
                          Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                const SizedBox(height: 12),
                                controller.appCtrl.buildKeyValueAlign(
                                    width: 90, color: Colors.red.shade800, key: 'SKU', value: '${controller.productSearchData.value[index].sku ?? ''}'),
                                controller.appCtrl.buildKeyValueAlign(
                                    width: 90, color: Colors.grey.shade900, key: 'COO', value: '${controller.productSearchData.value[index].country_of_origin ?? ''}'),
                                if (controller.productSearchData.value[index]?.batch_code != null && controller.productSearchData.value[index]?.batch_code != '')
                                  controller.appCtrl.buildKeyValueAlign(
                                      width: 90, color: Colors.grey.shade900, key: 'Batch Code', value: '${controller.productSearchData.value[index].batch_code ?? ''}'),
                                if (controller.productSearchData.value[index]?.internal_ref != null && controller.productSearchData.value[index]?.internal_ref != '')
                                  controller.appCtrl.buildKeyValueAlign(
                                      width: 90,
                                      color: Colors.grey.shade900,
                                      key: 'Internal Ref',
                                      value: '${controller.productSearchData.value[index].internal_ref ?? ''}'),
                                Row(children: [
                                  SizedBox(
                                      width: 90,
                                      child: Text('Quantity ', style: FITextStyle.xsMBold.copyWith(fontWeight: FontWeight.w500)).paddingSymmetric(horizontal: 3)),
                                  Text(':  ', style: FITextStyle.xsMBold.copyWith(fontWeight: FontWeight.w500)),
                                  Expanded(
                                      child: RichText(
                                          text: TextSpan(
                                              text: '${controller.productSearchData.value[index]?.scanned_qty} /',
                                              style: FITextStyle.sMBold.copyWith(color: Colors.green.shade800, fontWeight: FontWeight.w500, fontSize: 15),
                                              children: [
                                        TextSpan(
                                            text: '${controller.productSearchData.value[index]?.order_qty ?? ''}',
                                            style: FITextStyle.sMBold.copyWith(color: Colors.red, fontWeight: FontWeight.w500, fontSize: 15)),
                                      ])).paddingSymmetric(vertical: 3, horizontal: 2))
                                ])
                              ]).paddingAll(5).paddingSymmetric(vertical: 10)),
                          Container(
                                  width: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(topRight: Radius.circular(8), bottomLeft: Radius.circular(8)),
                                      color: controller.productSearchData.value[index]?.scanned_qty > 0.0 &&
                                                  controller.productSearchData.value[index]?.scanned_qty < controller.productSearchData.value[index]?.order_qty ||
                                              controller.productSearchData.value[index]?.scanned_qty > controller.productSearchData.value[index]?.order_qty
                                          ? Colors.yellowAccent.shade700
                                          : Colors.red),
                                  child: Text(
                                          controller.productSearchData.value[index]?.order_qty == controller.productSearchData.value[index]?.scanned_qty
                                              ? 'Completed'
                                              : controller.productSearchData.value[index]?.scanned_qty == 0.0
                                                  ? 'Pending'
                                                  : controller.productSearchData.value[index]?.scanned_qty > 0.0 &&
                                                          controller.productSearchData.value[index]?.scanned_qty < controller.productSearchData.value[index]?.order_qty
                                                      ? 'Shortage'
                                                      : controller.productSearchData.value[index]?.scanned_qty > controller.productSearchData.value[index]?.order_qty
                                                          ? 'Excess'
                                                          : '',
                                          style: FITextStyle.xxsMBold.copyWith(color: Colors.white),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center)
                                      .paddingSymmetric(vertical: 2))
                              .paddingAll(5)
                        ])).paddingSymmetric(vertical: 5))
              ]
            ] else ...[
              for (var index = 0; index < controller.productData.length; index++) ...[
                Bounceable(
                    onTap: () async {
                      controller.productDetailIndex(index);
                      if (controller.productData.value[index]?.order_qty == controller.productData.value[index]?.scanned_qty) {
                        controller.productDetailStatus('Completed');
                      } else if (controller.productData.value[index]?.scanned_qty == 0.0) {
                        controller.productDetailStatus('Pending');
                      } else if (controller.productData.value[index]?.scanned_qty > 0.0 &&
                          controller.productData.value[index]?.scanned_qty < controller.productData.value[index]?.order_qty) {
                        controller.productDetailStatus('Shortage');
                      } else if (controller.productData.value[index]?.scanned_qty > controller.productData.value[index]?.order_qty) {
                        controller.productDetailStatus('Excess');
                      }
                      controller.appCtrl.resetScanData();
                      controller.locationDetails(const LocationDetails());
                      await controller.getScannedLocation(
                          moveId: controller.productData.value[index]?.move_id,
                          pickingId: controller.productData.value[index]?.picking_id,
                          productId: controller.productData.value[index]?.product_id);
                      Get.to(() => const ProductDetailPutawayScreen());
                    },
                    child: SizedBox(
                        width: 100.w,
                        child: Stack(alignment: Alignment.topRight, children: [
                          Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                const SizedBox(height: 12),
                                controller.appCtrl
                                    .buildKeyValueAlign(width: 90, color: Colors.red.shade800, key: 'SKU', value: '${controller.productData.value[index].sku ?? ''}'),
                                controller.appCtrl.buildKeyValueAlign(
                                    width: 90, color: Colors.grey.shade900, key: 'COO', value: '${controller.productData.value[index].country_of_origin ?? ''}'),
                                if (controller.productData.value[index]?.batch_code != null && controller.productData.value[index]?.batch_code != '')
                                  controller.appCtrl.buildKeyValueAlign(
                                      width: 90, color: Colors.grey.shade900, key: 'Batch Code', value: '${controller.productData.value[index].batch_code ?? ''}'),
                                if (controller.productData.value[index]?.internal_ref != null && controller.productData.value[index]?.internal_ref != '')
                                  controller.appCtrl.buildKeyValueAlign(
                                      width: 90, color: Colors.grey.shade900, key: 'Internal Ref', value: '${controller.productData.value[index].internal_ref ?? ''}'),
                                Row(children: [
                                  SizedBox(
                                      width: 90,
                                      child: Text('Quantity ', style: FITextStyle.xsMBold.copyWith(fontWeight: FontWeight.w500)).paddingSymmetric(horizontal: 3)),
                                  Text(':  ', style: FITextStyle.xsMBold.copyWith(fontWeight: FontWeight.w500)),
                                  Expanded(
                                      child: RichText(
                                          text: TextSpan(
                                              text: '${controller.productData.value[index]?.scanned_qty} /',
                                              style: FITextStyle.sMBold.copyWith(color: Colors.green.shade800, fontWeight: FontWeight.w500, fontSize: 15),
                                              children: [
                                        TextSpan(
                                            text: '${controller.productData.value[index]?.order_qty ?? ''}',
                                            style: FITextStyle.sMBold.copyWith(color: Colors.red, fontWeight: FontWeight.w500, fontSize: 15)),
                                      ])).paddingSymmetric(vertical: 3, horizontal: 2))
                                ])
                              ]).paddingAll(5).paddingSymmetric(vertical: 10)),
                          Container(
                                  width: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(topRight: Radius.circular(8), bottomLeft: Radius.circular(8)),
                                      color: controller.productData.value[index]?.scanned_qty > 0.0 &&
                                                  controller.productData.value[index]?.scanned_qty < controller.productData.value[index]?.order_qty ||
                                              controller.productData.value[index]?.scanned_qty > controller.productData.value[index]?.order_qty
                                          ? Colors.yellowAccent.shade700
                                          : Colors.red),
                                  child: Text(
                                          controller.productData.value[index]?.order_qty == controller.productData.value[index]?.scanned_qty
                                              ? 'Completed'
                                              : controller.productData.value[index]?.scanned_qty == 0.0
                                                  ? 'Pending'
                                                  : controller.productData.value[index]?.scanned_qty > 0.0 &&
                                                          controller.productData.value[index]?.scanned_qty < controller.productData.value[index]?.order_qty
                                                      ? 'Shortage'
                                                      : controller.productData.value[index]?.scanned_qty > controller.productData.value[index]?.order_qty
                                                          ? 'Excess'
                                                          : '',
                                          style: FITextStyle.xxsMBold.copyWith(color: Colors.white),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center)
                                      .paddingSymmetric(vertical: 2))
                              .paddingAll(5)
                        ])).paddingSymmetric(vertical: 5))
              ]
            ]
          ]
        ]));
}
