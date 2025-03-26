import 'package:css_stranbys/src/Recieve/recieve_controller.dart';
import 'package:css_stranbys/src/Shared/util/helper/common_helper.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_button_primary.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_empty_state.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_loader_indicator.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_scaffold.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_text.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_text_input.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../Shared/util/theme/theme_constant.dart';

class SingleRecieveScreen extends GetView<RecieveController> {
  const SingleRecieveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => FIScaffold(
        heading: 'Receive.',
        customSuffixIcon: const Icon(Icons.inventory_sharp, color: Colors.white, size: 40),
        title: '${controller.singlePackingData.first.grn_name ?? ''}',
        child: Column(children: [_buildScreen()])));
  }

  _buildScreen() => Obx(() => controller.isLoading.isTrue
      ? const FILoaderIndicator()
      : Column(
          children: [
            if (controller.singlePackingData.isEmpty) ...[
              const FIEmptyState(
                title: 'No pending receive list found.',
              )
            ] else ...[
              // FIText(
              //   text: '${controller.singlePackingData.first.grn_name ?? ''}',
              //   textStyle: FITextStyle.mMBold.copyWith(color: Colors.red),
              // ),
              for (var item in controller.singlePackingData) ...[
                Bounceable(
                  onTap: () {
                    if (item.status != 'done') {
                      controller.getProductList(id: item.picking_id);
                    }
                  },
                  child: SizedBox(
                      width: 100.w,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                          Row(children: [
                            if (item?.truck_show == true)
                              InkResponse(
                                onTap: () async {
                                  await controller.getTruckList();
                                  var selectedTruck = 0.obs;
                                  FIBottomSheet(
                                      title: 'Select Truck Details',
                                      titleBgHexColor: '#fffff',
                                      contentHorizontalPadding: 20,
                                      contentVerticalPadding: 10,
                                      safeAreaBackgroundColor: Colors.grey.shade200,
                                      footerWidget: Container(
                                        color: Colors.grey.shade200,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: FIButtonPrimary(
                                                onPressed: () {
                                                  Get.close(1);
                                                },
                                                text: 'Close',
                                                isBtnColor: true,
                                                btnColor: Colors.grey.shade500,
                                                textStyle: FITextStyle.xsMBold.copyWith(color: Colors.white),
                                              ).paddingAll(5).paddingSymmetric(horizontal: 10),
                                            ),
                                            Expanded(
                                              child: FIButtonPrimary(
                                                onPressed: () {
                                                  if (selectedTruck.value == 0) {
                                                    showSnackBar(message: 'Please Select Truck ');
                                                  } else {
                                                    controller.submitTruckDetails(pickingId: item.picking_id, packingId: item.grn_id, truckId: selectedTruck.value);
                                                  }
                                                },
                                                text: 'Save',
                                                textStyle: FITextStyle.xsMBold.copyWith(color: Colors.white),
                                              ).paddingAll(5).paddingSymmetric(horizontal: 10),
                                            ),
                                          ],
                                        ),
                                      ),
                                      bottomSheetWidget: Container(
                                        color: Colors.grey.shade200,
                                        child: Form(
                                          child: controller.truckList.isEmpty
                                              ? FIEmptyState()
                                              : SingleChildScrollView(
                                                  child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    for (var element in controller.truckList.value) ...[
                                                      Bounceable(
                                                        onTap: () {
                                                          selectedTruck(element.id ?? 0);
                                                        },
                                                        child: SizedBox(
                                                          width: 100.w,
                                                          // height: 130,
                                                          child: Obx(() => Card(
                                                                color: selectedTruck.value == element.id ? Colors.green.shade300 : null,
                                                                child: Row(
                                                                  children: [
                                                                    Icon(
                                                                      Icons.fire_truck,
                                                                      color: Colors.grey.shade600,
                                                                    ).paddingAll(10),
                                                                    Expanded(
                                                                      child: Column(
                                                                        children: [
                                                                          controller.appCtrl.buildKeyValueAlign(
                                                                              width: 50, color: Colors.red.shade600, key: 'Name', value: element.truck_name),
                                                                          controller.appCtrl.buildKeyValueAlign(
                                                                              width: 50, color: Colors.black, key: 'Type', value: element.truck_type_name),
                                                                          controller.appCtrl.buildKeyValueAlign(
                                                                              width: 50, color: Colors.black, key: 'Date', value: element.gate_in_date),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ).paddingSymmetric(vertical: 10),
                                                              )),
                                                        ),
                                                      )
                                                    ]
                                                  ],
                                                )).paddingSymmetric(vertical: 10),
                                        ),
                                      ));
                                },
                                child: Container(
                                  decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(25), border: Border.all(width: 1)),
                                  child: Row(
                                    children: [
                                      Icon(Icons.local_shipping).paddingOnly(left: 5),
                                      FIText(
                                        text: ' Truck Details ',
                                        textStyle: FITextStyle.xxxsMBold,
                                      ).paddingAll(5),
                                    ],
                                  ),
                                ),
                              ).paddingSymmetric(horizontal: 5).paddingOnly(bottom: 10),
                            const Expanded(child: SizedBox()),
                            Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: (item.status == 'done') ? Colors.green.shade400 : Colors.transparent,
                                    ),
                                    child: Text(
                                      (item.status == 'done') ? 'Completed' : '',
                                      style: FITextStyle.xxxsMBold.copyWith(color: Colors.white),
                                    ).paddingAll(5))
                                .paddingSymmetric(horizontal: 3),
                          ]),
                          controller.appCtrl.buildKeyValueAlign(key: 'Document', value: '${item.picking_name ?? ''}'),
                        ]).paddingAll(5).paddingSymmetric(vertical: 10),
                      )).paddingSymmetric(vertical: 5),
                ),
              ],
            ],
            // SizedBox(height: 80.h),
          ],
        ));
}
