import 'package:css_stranbys/src/Internal%20Transfer/internal_transfer_controller.dart';
import 'package:css_stranbys/src/Internal%20Transfer/location_screen.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_loader_indicator.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_scaffold.dart';
import 'package:css_stranbys/src/shared/util/theme/theme_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class InternalTransferScreen extends GetView<InternalTransferController> {
  @override
  Widget build(BuildContext context) => FIScaffold(
      customSuffixIcon: const Icon(Icons.warehouse_rounded, color: Colors.white, size: 40),
      title: 'Warehouses',
      onRefresh: () async => controller.initialise(),
      onback: () {
        controller.resetData();
      },
      child: Column(children: [
        _buildScreen(),
      ]));

  _buildScreen() => Obx(() => controller.isLoading.isTrue
      ? const FILoaderIndicator()
      : Column(children: [
          for (var item in controller.warehouseList.value) ...[
            Bounceable(
                onTap: () {
                  controller.selectedWarehouseName(item.name ?? '');
                  controller.selectedWarehouseId(item.id ?? 0);
                  Get.to(() => const InternalTransferLocationScreen());
                },
                child: SizedBox(
                        width: 100.w,
                        child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                              Row(children: [
                                const Icon(Icons.warehouse_outlined, size: 50).paddingSymmetric(horizontal: 8),
                                Expanded(
                                    child: Center(
                                        child: Text(
                                  item.name ?? '',
                                  style: FITextStyle.sMBold.copyWith(color: Colors.red, fontWeight: FontWeight.w500, fontSize: 18),
                                )))
                              ])
                            ]).paddingAll(5).paddingSymmetric(vertical: 20)))
                    .paddingSymmetric(vertical: 5))
          ]
        ]));
}
