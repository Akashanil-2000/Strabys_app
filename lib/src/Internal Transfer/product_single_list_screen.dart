import 'dart:async';

import 'package:css_stranbys/src/Internal%20Transfer/internal_transfer_controller.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_empty_state.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_loader_indicator.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_scaffold.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_scan_barcode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../Shared/util/theme/theme_constant.dart';

class ProductSingleListInternalTransferScreen extends GetView<InternalTransferController> {
  const ProductSingleListInternalTransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => FIScaffold(
        heading: 'Product',
        customSuffixIcon: const Icon(Icons.local_shipping_outlined, color: Colors.white, size: 40),
        title: controller.selectedLocationName.value,
        onback: () {
          controller.getProductList();
          controller.appCtrl.resetScanData();
          controller.selectedSingleProductName('');
          controller.selectedSingleProductSKU('');
          controller.selectedSingleProductInternalRef('');
          controller.selectedSingleProductId(0);
          controller.singleProductList([]);
          controller.singleProductSearchList([]);
          controller.isSearching(false);
        },
        child: Column(children: [
          controller.appCtrl.buildSearchField(
              search_controller: controller.singleProductSearchkey,
              onchange: (key) {
                if (controller.debounce?.isActive ?? false) controller.debounce?.cancel();
                controller.debounce = Timer(const Duration(milliseconds: 500), () {
                  controller.searchProduct(key, isProduct: false);
                });
              }),
          const SizedBox(height: 5),
          _buildScreen()
        ])));
  }

  _buildScreen() => Obx(() => controller.isLoading.isTrue
      ? const FILoaderIndicator()
      : Column(children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(width: 2, color: Colors.red.shade600)),
            child: Column(
              children: [
                Text(controller.selectedSingleProductName.value, style: FITextStyle.xsMBold.copyWith(fontWeight: FontWeight.w500), textAlign: TextAlign.center)
                    .paddingAll(8),
                const Divider(height: 2, thickness: 1.5),
                Text('Internal Ref :${controller.selectedSingleProductInternalRef.value}',
                        style: FITextStyle.xsMBold.copyWith(fontWeight: FontWeight.w500, color: Colors.red.shade800), textAlign: TextAlign.center)
                    .paddingAll(8),
                const Divider(height: 2, thickness: 1.5),
                Text('SKU :${controller.selectedSingleProductSKU.value}',
                        style: FITextStyle.xsMBold.copyWith(fontWeight: FontWeight.w500, color: Colors.red.shade800), textAlign: TextAlign.center)
                    .paddingAll(8),
              ],
            ),
          ).paddingSymmetric(horizontal: 10, vertical: 3),
          if (controller.singleProductList.isEmpty) ...[
            const FIEmptyState(title: 'Product Batch  List Empty. ')
          ] else ...[
            if (controller.singleProductSearchList.isNotEmpty) ...[
              for (var item in controller.singleProductSearchList.value) ...[
                _buildSingleProductWidget(item),
              ]
            ] else ...[
              for (var item in controller.singleProductList.value) ...[
                _buildSingleProductWidget(item),
              ]
            ]
          ],
        ]));

  _buildSingleProductWidget(item) => Bounceable(
      onTap: () {
        controller.appCtrl.resetScanData();
        controller.destinationLocationList([]);
        controller.quantityCtrl.clear();
        Get.bottomSheet(
          _buildBottomWidget(item),
          ignoreSafeArea: false,
        );
      },
      child: SizedBox(
          width: 100.w,
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              controller.appCtrl.buildKeyValueAlign(width: 110, color: Colors.red.shade600, key: 'Inbound Doc.', value: item.boe ?? '--'),
              controller.appCtrl.buildKeyValueAlign(width: 110, color: Colors.black87, key: 'COO', value: item.coo ?? ''),
              controller.appCtrl.buildKeyValueAlign(width: 110, color: Colors.black87, key: 'Batch Code', value: item.batch_code ?? '--'),
              controller.appCtrl.buildKeyValueAlign(width: 110, color: Colors.black87, key: 'Available Qty', value: item.product_qty ?? '--'),
            ]).paddingAll(5).paddingSymmetric(vertical: 10),
          )).paddingSymmetric(vertical: 5));

  _buildBottomWidget(item) => Container(
        width: 100.w,
        decoration: BoxDecoration(borderRadius: const BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)), color: Colors.grey.shade200),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            InkResponse(
              onTap: () => Get.back(),
              child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  child: const Row(children: [Expanded(child: Center(child: Icon(Icons.keyboard_arrow_down_rounded, size: 40)))])),
            ),
            Row(children: [
              Expanded(child: Text('${controller.appCtrl.barcodeString.value ?? ''}\n${controller.appCtrl.scanTime ?? ''}')),
              if (controller.appCtrl.barcodeString.value != '') ...[
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade300, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    onPressed: () => controller.getDesitinationLocation(barcode: controller.appCtrl.barcodeString.value),
                    icon: Icon(Icons.search, size: 24.0, color: Colors.grey.shade700),
                    label: Text('Fetch Location', style: TextStyle(color: Colors.grey.shade700)))
              ]
            ]),
            if (controller.appCtrl.barcodeString.value == '') ...[
              const FIScanBarcode(title: 'No destination location found. Please Scan & Fetch .. '),
            ],
            if (controller.destinationLocationList.isNotEmpty) ...[
              for (var element in controller.destinationLocationList.value) ...[
                Bounceable(
                    onTap: () {
                      controller.getQtyDialog(Get.context!, validatingQty: item.product_qty ?? 0, lotId: item?.lot_id ?? 0, id: element.id ?? 0);
                    },
                    child: SizedBox(
                        width: 100.w,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                            controller.appCtrl.buildKeyValueAlign(width: 75, color: Colors.red.shade600, key: 'Name', value: element.name ?? ''),
                            controller.appCtrl.buildKeyValueAlign(width: 75, color: Colors.black87, key: 'Barcode', value: element.barcode ?? ''),
                          ]).paddingAll(5).paddingSymmetric(vertical: 10),
                        )).paddingSymmetric(vertical: 5))
              ]
            ],
            SizedBox(height: 25.h)
          ]).paddingSymmetric(horizontal: 10),
        ),
      );
}
