import 'package:css_stranbys/src/Shared/model/warehouse_scanned_data_list_model.dart';
import 'package:css_stranbys/src/Shared/model/warehouse_stock_product_list_model.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_button_primary.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_empty_state.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_outline_button.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_text.dart';
import 'package:css_stranbys/src/Warehouse%20Transfer/location_list_screen.dart';
import 'package:css_stranbys/src/Warehouse%20Transfer/warehouse_controller.dart';
import 'package:css_stranbys/src/shared/util/helper/common_helper.dart';
import 'package:get/get.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_loader_indicator.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_scaffold.dart';
import 'package:css_stranbys/src/shared/util/theme/theme_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:sizer/sizer.dart';

class WarehouseProductListScreen extends GetView<WarehouseController> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Obx(() => FIScaffold(
          heading: '${controller.isStockIn == 'true' ? 'Stock IN' : 'Stock OUT'}',
          onback: () async {
            controller.reset();
            await controller.initialise();
          },
          onRefresh: () async {
            controller.getWarehouseStockProductList(transferId: controller.selectedTransferId.value);
          },
          customSuffixIcon: const Icon(Icons.move_up_outlined, color: Colors.white, size: 40),
          title: controller.selectedScaffoldTitle.value,
          child: Column(children: [
            _buildScreen(),
          ]))),
    );
  }

  _buildScreen() => Obx(() => controller.isLoading.isTrue
      ? const FILoaderIndicator()
      : controller.productList.isEmpty
          ? const FIEmptyState()
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var item in controller.productList.value) ...[
                  Bounceable(
                      onTap: () async {
                        if (controller.isStockIn.value == 'true') {
                          controller.selectedBalanceQty(item.balance);
                          controller.selectedProductName(item.name);
                          controller.selectedCOO(item.coa_name);
                          controller.selectedTransferLineId(item.transfer_line_id);
                          controller.selectedMoveId(item.move_id);

                          Get.to(() => WarehouseLocationListScreen());
                        } else if (controller.isStockIn.value == 'false') {
                          if (item?.status == 'Completed') {
                            showSnackBar(message: 'This Product already Completed! \nTry again with another product.');
                          } else {
                            controller.selectedProductName(item.name);
                            controller.selectedCOO(item.coa_name);
                            await controller.getWarehouseStockLocationList(transferLineId: item.transfer_line_id, moveId: item.move_id, productId: item?.product_id);

                            Get.to(() => WarehouseLocationListScreen());
                          }
                        }
                      },
                      child: SizedBox(
                          width: 100.w,
                          child: Card(
                            elevation: 5,
                            margin: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                              Row(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                Expanded(
                                  child: FIText(
                                    text: item?.name ?? "",
                                    textStyle: FITextStyle.xsMBold.copyWith(color: Colors.red),
                                    textAlign: TextAlign.center,
                                  ).paddingAll(5),
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(topRight: const Radius.circular(10), bottomLeft: Radius.circular(10)),
                                        color: (item.status == 'Completed')
                                            ? Colors.green.shade400
                                            : (item.status == 'Pending')
                                                ? Colors.red
                                                : Colors.transparent),
                                    child: Text(
                                      item?.status ?? '',
                                      style: FITextStyle.xxxsMBold.copyWith(color: Colors.white),
                                    ).paddingAll(5))
                              ]),
                              Column(
                                children: [
                                  controller.appCtrl.buildKeyValueAlign(width: 100, color: Colors.grey.shade900, key: 'Internal ref.', value: item.internal_ref ?? ''),
                                  controller.appCtrl.buildKeyValueAlign(width: 100, color: Colors.grey.shade900, key: 'SKU', value: item.sku_number ?? ''),
                                  controller.appCtrl.buildKeyValueAlign(width: 100, color: Colors.grey.shade900, key: 'COO', value: item.coa_name ?? ''),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          children: [
                                            controller.appCtrl
                                                .buildKeyValueAlign(width: 100, color: Colors.grey.shade900, key: 'Product Qty', value: item.product_qty ?? ''),
                                            controller.appCtrl
                                                .buildKeyValueAlign(width: 100, color: Colors.green.shade900, key: 'Scanned Qty', value: item.scanned_qty ?? ''),
                                            controller.appCtrl.buildKeyValueAlign(width: 100, color: Colors.red.shade900, key: 'Balance Qty', value: item.balance ?? ''),
                                          ],
                                        ),
                                      ),
                                      FIOutLineButton(
                                        onPressed: () async {
                                          List<ScannedDataList> list = await controller.previewScannedDetails(transferLineId: item.transfer_line_id);
                                          if (list.isNotEmpty) {
                                            openPreviewBottomSheet(list, item);
                                          }
                                        },
                                        text: 'Preview',
                                        width: 60,
                                        maxWidth: 60,
                                        height: 30,
                                      ).paddingOnly(right: 3)
                                    ],
                                  )
                                ],
                              ).paddingAll(5).paddingSymmetric(vertical: 5, horizontal: 5)
                            ]),
                          ))).paddingOnly(bottom: 15),
                ]
              ],
            ));

  openPreviewBottomSheet(List<ScannedDataList> scannedDataList, WarehouseStockProductList item) {
    return FIBottomSheet(
        title: 'Scanned Details',
        titleBgHexColor: '#fffff',
        contentHorizontalPadding: 10,
        contentVerticalPadding: 10,
        safeAreaBackgroundColor: Colors.grey.shade200,
        footerWidget: Container(
          color: Colors.grey.shade200,
          child: FIButtonPrimary(
            onPressed: () {
              Get.back();
            },
            text: 'Close',
            textStyle: FITextStyle.xsMBold.copyWith(color: Colors.white),
          ).paddingAll(5),
        ),
        bottomSheetWidget: SingleChildScrollView(
          child: Column(children: [
            Card(
              child: Column(children: [
                FIText(
                  text: '${item.name}',
                  textStyle: FITextStyle.xxsMBold.copyWith(color: Colors.red),
                  textAlign: TextAlign.center,
                ),
                FIText(
                  text: 'Country of Origin : ${item?.coa_name}',
                  textStyle: FITextStyle.xxsMBold.copyWith(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                const Divider(),
                FIText(
                  text: 'Product Qty : ${item?.product_qty}',
                  textStyle: FITextStyle.xxsMBold.copyWith(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ]).paddingAll(10),
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Table(
                border: TableBorder.all(color: Colors.black),
                children: [
                  TableRow(children: [
                    Center(
                        child: Text(
                      'Location',
                      style: FITextStyle.xsMBold.copyWith(color: Colors.red),
                    ).paddingSymmetric(vertical: 3)),
                    Center(child: Text('Inb Doc.', style: FITextStyle.xsMBold.copyWith(color: Colors.red)).paddingSymmetric(vertical: 3)),
                    Center(child: Text('Qty', style: FITextStyle.xsMBold.copyWith(color: Colors.red)).paddingSymmetric(vertical: 3)),
                  ]),
                  for (var i = 0; i < scannedDataList.length; i++) ...[
                    TableRow(children: [
                      Text('${scannedDataList[i].location_name}', style: FITextStyle.xxsMBold, textAlign: TextAlign.center).paddingSymmetric(vertical: 3),
                      Text(
                        '${scannedDataList[i].lot_name}',
                        style: FITextStyle.xxsMBold,
                        textAlign: TextAlign.center,
                      ).paddingSymmetric(vertical: 3),
                      Text(
                        '${scannedDataList[i].quantity}',
                        style: FITextStyle.xxsMBold,
                        textAlign: TextAlign.center,
                      ).paddingSymmetric(vertical: 3),
                    ])
                  ],
                  TableRow(decoration: BoxDecoration(color: Colors.grey.shade400), children: [
                    Text(' ', style: FITextStyle.xxsMBold, textAlign: TextAlign.center).paddingSymmetric(vertical: 3),
                    Text(
                      'Total',
                      style: FITextStyle.xxsMBold,
                      textAlign: TextAlign.center,
                    ).paddingSymmetric(vertical: 3),
                    Text(
                      '${scannedDataList.fold(0.00, (sum, item) => sum + (item.quantity ?? 0.00))}',
                      style: FITextStyle.xxsMBold,
                      textAlign: TextAlign.center,
                    ).paddingSymmetric(vertical: 3),
                  ])
                ],
              ).paddingAll(10),
            ),
          ]),
        ));
  }
}
