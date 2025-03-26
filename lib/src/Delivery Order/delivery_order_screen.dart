import 'package:css_stranbys/src/Delivery%20Order/delivery_order_controller.dart';
import 'package:css_stranbys/src/Shared/model/delivery_model.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_empty_state.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_loader_indicator.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_scaffold.dart';
import 'package:css_stranbys/src/shared/util/theme/theme_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../Shared/util/helper/form_helper.dart';

class DeliveryOrderScreen extends GetView<DeliveryOrderController> {
  const DeliveryOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FIScaffold(
        customSuffixIcon: const Icon(Icons.delivery_dining, color: Colors.white, size: 40),
        title: 'Delivery Order',
        onRefresh: () async {
          return controller.initialise();
        },
        child: Column(children: [controller.appCtrl.buildSearchField(search_controller: controller.FirstSearchkey), _buildScreen()]));
  }

  _buildScreen() => Obx(() => controller.isLoading.isTrue
      ? const FILoaderIndicator()
      : Column(
    children: [
      if ((controller.isSearching.isTrue && controller.deliverySearchData.isEmpty) || (controller.isSearching.isFalse && controller.deliveryData.isEmpty)) ...[
        const FIEmptyState(title: 'No pending delivery order list found.')
      ] else ...[
        if (controller.isSearching.isTrue) ...[
          for (DeliveryData item in controller.deliverySearchData) ...[
            Bounceable(
              onTap: () {
                controller.getSingleRecord(id: item.id);
              },
              child: SizedBox(
                  width: 100.w,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                controller.appCtrl.buildKeyValueAlign(key: 'GDN', color: Colors.red.shade700, value: item.name ?? ''),
                                controller.appCtrl.buildKeyValueAlign(key: 'Customer', color: Colors.grey.shade700, value: item.customer_name ?? ''),
                                controller.appCtrl.buildKeyValueAlign(key: 'Consignee', color: Colors.grey.shade700, value: item.consignee_name ?? ''),
                                controller.appCtrl.buildKeyValueAlign(key: 'Warehouse', color: Colors.grey.shade700, value: item.warehouse?.name ?? ''),
                              ]).paddingAll(5).paddingSymmetric(vertical: 10),
                        ),
                        IconButton(
                          icon: const Icon(Icons.local_shipping_rounded, size: 30, color: Colors.blue),
                          onPressed: () {
                            Get.bottomSheet(
                              FormHelper(), // Call your truck form bottom sheet here
                              isScrollControlled: true,  // Ensure full screen modal behavior
                              backgroundColor: Colors.white,
                            );
                          },
                        ),
                      ],
                    ),
                  )).paddingSymmetric(vertical: 5),
            ),
          ],
        ] else ...[
          for (DeliveryData item in controller.deliveryData) ...[
            Bounceable(
              onTap: () {
                controller.getSingleRecord(id: item.id);
              },
              child: SizedBox(
                  width: 100.w,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                controller.appCtrl.buildKeyValueAlign(key: 'GDN', color: Colors.red.shade700, value: item.name ?? ''),
                                controller.appCtrl.buildKeyValueAlign(key: 'Customer', color: Colors.grey.shade700, value: item.customer_name ?? ''),
                                controller.appCtrl.buildKeyValueAlign(key: 'Consignee', color: Colors.grey.shade700, value: item.consignee_name ?? ''),
                                controller.appCtrl.buildKeyValueAlign(key: 'Warehouse', color: Colors.grey.shade700, value: item.warehouse?.name ?? ''),
                              ]).paddingAll(5).paddingSymmetric(vertical: 10),
                        ),
                        IconButton(

                          icon: const Icon(Icons.local_shipping_rounded, size: 30),
                          onPressed: () {
                            Get.bottomSheet(
                              FormHelper(), // Call your truck form bottom sheet here
                              isScrollControlled: true,  // Ensure full screen modal behavior
                              backgroundColor: Colors.white,
                            );
                          },
                        ),
                      ],
                    ),
                  )).paddingSymmetric(vertical: 5),
            ),
          ],
        ]
      ],
      SizedBox(height: 80.h),
    ],
  ));
}
