import 'package:css_stranbys/src/Shared/model/warehouse_location_list_model.dart';
import 'package:css_stranbys/src/Shared/util/helper/common_helper.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_empty_state.dart';
import 'package:css_stranbys/src/Warehouse%20Transfer/warehouse_controller.dart';
import 'package:css_stranbys/src/shared/widgets/fi_text.dart';
import 'package:get/get.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_loader_indicator.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_scaffold.dart';
import 'package:css_stranbys/src/shared/util/theme/theme_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:sizer/sizer.dart';

class WarehouseLocationListScreen extends GetView<WarehouseController> {
  @override
  Widget build(BuildContext context) {
    return FIScaffold(
        heading: '${controller.isStockIn == 'true' ? 'Stock IN' : 'Stock OUT'}',
        onback: () async {
          await controller.appCtrl.resetScanData();
          if (controller.isStockIn.value == 'true') {
            controller.locationList([]);
            controller.productQtyList([]);
          }
          await controller.getWarehouseStockProductList(transferId: controller.selectedTransferId.value);
        },
        onRefresh: () async {},
        customSuffixIcon: const Icon(Icons.move_up_outlined, color: Colors.white, size: 40),
        title: controller.selectedScaffoldTitle.value,
        child: Column(children: [
          _buildScreen(),
        ]));
  }

  _buildScreen() => Obx(() => controller.isLoading.isTrue
      ? const FILoaderIndicator()
      : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Column(children: [
                FIText(
                  text: controller.selectedProductName.value,
                  textStyle: FITextStyle.xxsMBold.copyWith(color: Colors.red),
                  textAlign: TextAlign.center,
                ),
                FIText(
                  text: 'Country of Origin : ${controller.selectedCOO.value}',
                  textStyle: FITextStyle.xxsMBold.copyWith(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                const Divider(),
                FIText(
                  text: 'Balance Qty : ${controller.selectedBalanceQty.value}',
                  textStyle: FITextStyle.xxsMBold.copyWith(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ]).paddingAll(10),
            ),
            Obx(() => Row(children: [
                  if (controller.isStockIn.value == 'true') ...[
                    Expanded(
                        child: Text(
                            '${controller.appCtrl.barcodeString.value == '' ? 'Please Scan Location' : controller.appCtrl.barcodeString.value}\n${controller.appCtrl.scanTime}')),
                    ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade300, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                        onPressed: () {
                          if (controller.appCtrl.barcodeString.value == '') {
                            showSnackBar(message: 'Please Scan Location Barcode!');
                          } else {
                            controller.getWarehouseStockInLocationList();
                          }
                        },
                        icon: Icon(Icons.search, size: 24.0, color: Colors.grey.shade700),
                        label: Text('Check Location', style: TextStyle(color: Colors.grey.shade700)))
                  ] else if (controller.isStockIn.value == 'false') ...[
                    if (controller.appCtrl.barcodeString.value != '') ...[
                      Expanded(child: Text('${controller.appCtrl.barcodeString.value}\n${controller.appCtrl.scanTime}')),
                      ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade300, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                          onPressed: () {
                            controller.getWarehouseStockLocationList(
                                transferLineId: controller.selectedTransferLineId.value,
                                moveId: controller.selectedMoveId.value,
                                productId: controller.selectedProductId.value);
                          },
                          icon: Icon(Icons.search, size: 24.0, color: Colors.grey.shade700),
                          label: Text('Fetch Location', style: TextStyle(color: Colors.grey.shade700)))
                    ]
                  ],
                ])),
            if (controller.appCtrl.barcodeString.value != '' &&
                controller.locationList.firstWhereOrNull((element) => element.location_barcode == controller.appCtrl.barcodeString.value) == null) ...[
              const FIEmptyState(title: 'No Location Found!'),
            ],
            _buildLocationItems(),
          ],
        ));

  _buildLocationItems() {
    return Obx(() => controller.isLoading.isTrue
        ? const SizedBox()
        : Column(
            children: [
              for (var item in controller.locationList.value) ...[
                if (controller.appCtrl.barcodeString.value != '' && item.location_barcode == controller.appCtrl.barcodeString.value) ...[
                  _buildCard(item),
                ] else if (controller.appCtrl.barcodeString.value == '') ...[
                  _buildCard(item),
                ]
              ],
            ],
          ));
  }

  _buildCard(LocationList? item) => Bounceable(
      onTap: () {
        if (controller.appCtrl.barcodeString.value == '') {
          showSnackBar(message: 'Please Scan Location Barcode!');
        } else {
          if (controller.isStockIn.value == 'true') {
            controller.getQtyStockInDialog(Get.context!, locationId: item?.location_id);
            controller.checkStockInBalanceQuantity();
          } else if (controller.isStockIn.value == 'false') {
            if (controller.selectedBalanceQty.value > 0) {
              controller.getQtyDialog(Get.context!,
                  availableQty: item?.available_qty ?? 0, balanceQty: controller.selectedBalanceQty.value, lotId: item?.lot_id, locationId: item?.location_id);
            }
          }
        }
      },
      child: SizedBox(
          width: 100.w,
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              controller.appCtrl.buildKeyValueAlign(width: 120, color: Colors.red.shade900, key: 'Location Name', value: item?.location_name ?? ''),
              if (controller.isStockIn.value == 'true') ...[
                controller.appCtrl.buildKeyValueAlign(width: 120, color: Colors.black, key: 'Warehouse.', value: item?.warehouse_name ?? ''),
              ] else if (controller.isStockIn.value == 'false') ...[
                controller.appCtrl.buildKeyValueAlign(width: 120, color: Colors.black, key: 'Inbound Doc.', value: item?.lot_name ?? ''),
                controller.appCtrl.buildKeyValueAlign(width: 120, color: Colors.grey.shade900, key: 'Available Qty', value: item?.available_qty ?? ''),
              ],
            ]).paddingAll(5).paddingSymmetric(vertical: 10),
          )).paddingSymmetric(vertical: 5));
}
