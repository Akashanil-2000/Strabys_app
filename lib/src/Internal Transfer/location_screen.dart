import 'package:css_stranbys/src/Internal%20Transfer/customer_list_screen.dart';
import 'package:css_stranbys/src/Internal%20Transfer/internal_transfer_controller.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_loader_indicator.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_scaffold.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_scan_barcode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class InternalTransferLocationScreen extends GetView<InternalTransferController> {
  const InternalTransferLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => FIScaffold(
        heading: 'Location',
        customSuffixIcon: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
                onTap: () {
                  controller.appCtrl.getMobileBarcode(context);
                },
                child: const Icon(Icons.qr_code_scanner_sharp, color: Colors.white, size: 40)),
          ],
        ),
        title: controller.selectedWarehouseName.value,
        onback: () {
          controller.selectedWarehouseName('');
          controller.selectedWarehouseId(0);
          controller.appCtrl.resetScanData();
        },
        child: Column(children: [_buildScreen()])));
  }

  _buildScreen() => Obx(() => controller.isLoading.isTrue
      ? const FILoaderIndicator()
      : Column(children: [
          Obx(() => Row(children: [
                Expanded(child: Text('${controller.appCtrl.barcodeString.value ?? ''}\n${controller.appCtrl.scanTime ?? ''}')),
                if (controller.appCtrl.barcodeString.value != '') ...[
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade300, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        controller.getLocation(code: controller.appCtrl.barcodeString.value);
                      },
                      icon: Icon(Icons.search, size: 24.0, color: Colors.grey.shade700),
                      label: Text('Fetch Location', style: TextStyle(color: Colors.grey.shade700)))
                ]
              ])),
          if (controller.appCtrl.barcodeString.value == '') ...[
            const FIScanBarcode(title: 'No location found. Please Scan & Fetch .. '),
          ],
          if (controller.locationList.isNotEmpty) ...[
            for (var item in controller.locationList.value) ...[
              Bounceable(
                  onTap: () async {
                    controller.selectedLocationName(item.name ?? '');
                    controller.selectedLocationId(item.id ?? 0);
                    await controller.getCustomerList();

                    Get.to(() => const CustomerListInternalTransferScreen());
                  },
                  child: SizedBox(
                      width: 100.w,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                          controller.appCtrl.buildKeyValueAlign(width: 70, color: Colors.red.shade800, key: 'Name', value: '${item?.name ?? ''}'),
                          controller.appCtrl.buildKeyValueAlign(width: 70, color: Colors.black87, key: 'Barcode', value: '${item?.barcode ?? ''}'),
                        ]).paddingAll(5).paddingSymmetric(vertical: 20),
                      )).paddingSymmetric(vertical: 5))
            ]
          ]
        ]));
}
