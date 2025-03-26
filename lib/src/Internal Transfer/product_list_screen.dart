import 'dart:async';

import 'package:css_stranbys/src/Internal%20Transfer/internal_transfer_controller.dart';
import 'package:css_stranbys/src/Internal%20Transfer/product_single_list_screen.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_empty_state.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_loader_indicator.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ProductListInternalTransferScreen extends GetView<InternalTransferController> {
  const ProductListInternalTransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => FIScaffold(
        heading: 'Products',
        customSuffixIcon: const Icon(Icons.local_shipping_outlined, color: Colors.white, size: 40),
        title: controller.selectedLocationName.value,
        onback: () {
          controller.appCtrl.resetScanData();

          controller.productList([]);
          controller.productSearchList([]);
          controller.isSearching(false);
        },
        child: Column(children: [
          controller.appCtrl.buildSearchField(
              search_controller: controller.productSearchkey,
              onchange: (key) {
                if (controller.debounce?.isActive ?? false) controller.debounce?.cancel();
                controller.debounce = Timer(const Duration(milliseconds: 500), () {
                  controller.searchProduct(key);
                });
              }),
          _buildScreen(),
        ])));
  }

  _buildScreen() => Obx(() => controller.isLoading.isTrue
      ? const FILoaderIndicator()
      : Column(children: [
          if (controller.productList.isEmpty) ...[
            const FIEmptyState(title: 'Product List Empty.')
          ] else ...[
            if (controller.productSearchList.isNotEmpty) ...[
              for (var item in controller.productSearchList.value) ...[
                _buildProductCard(item),
              ]
            ] else ...[
              for (var item in controller.productList.value) ...[
                _buildProductCard(item),
              ]
            ]
          ],
        ]));

  _buildProductCard(item) => Bounceable(
      onTap: () async {
        controller.selectedSingleProductInternalRef(item?.internal_ref ?? '');
        controller.selectedSingleProductSKU(item?.sku ?? '');
        controller.selectedSingleProductName(item.name ?? '');
        controller.selectedSingleProductId(item.product_id ?? 0);
        await controller.getSingleProductList();
        controller.productSearchkey.text = '';
        Get.to(() => const ProductSingleListInternalTransferScreen());
      },
      child: SizedBox(
          width: 100.w,
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              controller.appCtrl.buildKeyValueAlign(width: 75, color: Colors.green.shade800, key: 'Customer', value: item.customer_name ?? ''),
              controller.appCtrl.buildKeyValueAlign(width: 75, color: Colors.red.shade600, key: 'Product', value: item.name ?? ''),
              controller.appCtrl.buildKeyValueAlign(width: 75, color: Colors.black87, key: 'SKU', value: item.sku ?? ''),
              controller.appCtrl.buildKeyValueAlign(width: 75, color: Colors.black87, key: 'Internal Ref.', value: item.internal_ref ?? '--'),
            ]).paddingAll(5).paddingSymmetric(vertical: 10),
          )).paddingSymmetric(vertical: 5));
}
