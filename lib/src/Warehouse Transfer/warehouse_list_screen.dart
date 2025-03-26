import 'package:css_stranbys/src/Shared/widgets/fi_custom_switch.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_loader_indicator.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_scaffold.dart';
import 'package:css_stranbys/src/Warehouse%20Transfer/warehouse_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class WarehouseListScreen extends GetView<WarehouseController> {
  @override
  Widget build(BuildContext context) {
    return FIScaffold(
        heading: 'Warehouse Transfer',
        onback: () {
          controller.reset();
        },
        onRefresh: () async {
          return controller.initialise();
        },
        customSuffixIcon: const Icon(Icons.move_up_outlined, color: Colors.white, size: 40),
        title: '',
        child: Column(children: [
          _buildScreen(),
        ]));
  }

  _buildScreen() => Obx(() => controller.isLoading.isTrue
      ? const FILoaderIndicator()
      : Column(
          children: [
            FICustomSwitch(
              value: controller.isStockIn.value == 'true'
                  ? true
                  : controller.isStockIn.value == 'false'
                      ? false
                      : null,
              labelForYesButton: 'Stock In',
              labelForNoButton: 'Stock Out',
              backgroundColor: Colors.grey.shade300,
              onChanged: (value) {
                controller.isStockIn(value.toString());
              },
              buttonHeight: 35,
              yesCount: controller.stockInList.length,
              noCount: controller.stockOutList.length,
            ),
            if (controller.isStockIn.value == 'true') ...[
              _buildStockInList(),
            ],
            if (controller.isStockIn.value == 'false') ...[
              _buildStockOutList(),
            ],
          ],
        ));

  _buildStockInList() {
    return Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var item in controller.stockInList.value) ...[
              Bounceable(
                  onTap: () {
                    controller.getWarehouseStockProductList(transferId: item.transfer_id);
                    controller.selectedScaffoldTitle('${item.warehouse_name} - ${item.name}');
                  },
                  child: SizedBox(
                      width: 100.w,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                          controller.appCtrl.buildKeyValueAlign(width: 90, color: Colors.grey.shade900, key: 'Warehouse', value: '${item.warehouse_name ?? ''}'),
                          controller.appCtrl.buildKeyValueAlign(width: 90, color: Colors.red, key: 'Doc Name', value: '${item.name ?? ''}'),
                          controller.appCtrl.buildKeyValueAlign(width: 90, color: Colors.grey.shade900, key: 'Date', value: '${item.date ?? ''}'),
                        ]).paddingAll(5).paddingSymmetric(vertical: 10),
                      )).paddingSymmetric(vertical: 5)),
            ]
          ],
        ));
  }

  _buildStockOutList() {
    return Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var item in controller.stockOutList.value) ...[
              Bounceable(
                  onTap: () {
                    controller.getWarehouseStockProductList(transferId: item.transfer_id);
                    controller.selectedScaffoldTitle('${item.warehouse_name} - ${item.name}');
                  },
                  child: SizedBox(
                      width: 100.w,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                          controller.appCtrl.buildKeyValueAlign(width: 90, color: Colors.grey.shade900, key: 'Warehouse', value: '${item.warehouse_name ?? ''}'),
                          controller.appCtrl.buildKeyValueAlign(width: 90, color: Colors.red, key: 'Doc Name', value: '${item.name ?? ''}'),
                          controller.appCtrl.buildKeyValueAlign(width: 90, color: Colors.grey.shade900, key: 'Date', value: '${item.date ?? ''}'),
                        ]).paddingAll(5).paddingSymmetric(vertical: 10),
                      )).paddingSymmetric(vertical: 5)),
            ]
          ],
        ));
  }
}
