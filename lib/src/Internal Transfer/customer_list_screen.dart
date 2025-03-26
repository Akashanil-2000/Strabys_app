import 'dart:async';
import 'package:css_stranbys/src/Internal%20Transfer/internal_transfer_controller.dart';
import 'package:css_stranbys/src/Internal%20Transfer/product_list_screen.dart';
import 'package:css_stranbys/src/Shared/util/theme/theme_constant.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_empty_state.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_loader_indicator.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CustomerListInternalTransferScreen extends GetView<InternalTransferController> {
  const CustomerListInternalTransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => FIScaffold(
        heading: 'Customers',
        customSuffixIcon: const Icon(Icons.local_shipping_outlined, color: Colors.white, size: 40),
        title: controller.selectedLocationName.value,
        onback: () {
          controller.appCtrl.resetScanData();
          controller.selectedLocationName('');
          controller.selectedLocationId(0);
          controller.selectedCustomerId(0);
          controller.customerList([]);
          controller.productList([]);
          controller.customerSearchList([]);
          controller.locationList([]);
          controller.productSearchList([]);
          controller.isSearching(false);
        },
        child: Column(children: [
          controller.appCtrl.buildSearchField(
              search_controller: controller.customerSearchkey,
              onchange: (key) {
                if (controller.debounce?.isActive ?? false) controller.debounce?.cancel();
                controller.debounce = Timer(const Duration(milliseconds: 500), () {
                  controller.searchCustomer(key);
                });
              }),
          _buildScreen(),
        ])));
  }

  _buildScreen() => Obx(() => controller.isLoading.isTrue
      ? const FILoaderIndicator()
      : Column(children: [
          if (controller.customerList.isEmpty) ...[
            const FIEmptyState(title: 'Customer List Empty.')
          ] else ...[
            if (controller.customerSearchList.isNotEmpty) ...[
              for (var item in controller.customerSearchList.value) ...[
                _buildProductCard(item),
              ]
            ] else ...[
              for (var item in controller.customerList.value) ...[
                _buildProductCard(item),
              ]
            ]
          ],
        ]));

  _buildProductCard(item) => Bounceable(
      onTap: () async {
        await controller.getProductList(id: item?.id);
        Get.to(() => const ProductListInternalTransferScreen());
      },
      child: SizedBox(
          width: 100.w,
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Text(
                '${item?.name ?? ''}',
                style: FITextStyle.sMBold.copyWith(color: Colors.red.shade800, fontWeight: FontWeight.w500, fontSize: 15),
              )
            ]).paddingAll(5).paddingSymmetric(vertical: 10),
          )).paddingSymmetric(vertical: 5));
}
