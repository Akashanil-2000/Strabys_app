import 'dart:ffi';

import 'package:css_stranbys/src/Delivery%20Order/delivery_order_controller.dart';
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

class SingleDeliveryScreen extends GetView<DeliveryOrderController> {
  const SingleDeliveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => FIScaffold(
        heading: 'Delivery Order',
        customSuffixIcon: const Icon(Icons.delivery_dining, color: Colors.white, size: 40),
        title: controller.GRNNo.value,
        child: Column(children: [
          _buildScreen(),
        ])));
  }

  _buildScreen() => Obx(() => controller.isLoading.isTrue
      ? const FILoaderIndicator()
      : Column(
          children: [
            if (controller.singleDeliveryData.isEmpty) ...[
              const FIEmptyState(
                title: 'No pending delivery list found.',
              )
            ] else ...[
              FIText(
                text: '${controller.singleDeliveryData.first.grn_name ?? ''}',
                textStyle: FITextStyle.mMBold.copyWith(color: Colors.red),
              ),
              for (var item in controller.singleDeliveryData) ...[
                Bounceable(
                  onTap: () {
                    // if (item.status != 'done') {
                    controller.getDeliveryLocationList(pickingId: item.picking_id);
                    // }
                  },
                  child: SizedBox(
                      width: 100.w,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                            InkResponse(
                              onTap: () async {
                                var truckNo = TextEditingController();
                                var truckType = ''.obs;
                                var truckCapacity = ''.obs;
                                var containerNo = TextEditingController();
                                var container = ''.obs;
                                var sealNo = TextEditingController();
                                var driverName = TextEditingController();
                                var driverNo = TextEditingController();
                                final _formKey = GlobalKey<FormState>();

                                FIBottomSheet(
                                    title: 'Update Truck Details',
                                    titleBgHexColor: '#fffff',
                                    contentHorizontalPadding: 20,
                                    contentVerticalPadding: 10,
                                    safeAreaBackgroundColor: Colors.grey.shade200,
                                    footerWidget: Container(
                                      color: Colors.grey.shade200,
                                      child: FIButtonPrimary(
                                        onPressed: () {
                                          _formKey.currentState?.validate();
                                          if (truckType.value == '' || truckCapacity.value == '') {
                                            showSnackBar(message: 'Please Enter All Required Field');
                                          } else if (_formKey.currentState?.validate() == true) {
                                            controller.submitTruckDetails(
                                                pickingId: item.picking_id,
                                                driverName: driverName.text,
                                                mobileNo: driverNo.text,
                                                truckNo: truckNo.text,
                                                containerNo: containerNo.text,
                                                truckTypeId: truckType.value,
                                                truckCapacityId: truckCapacity.value,
                                                containerTypeId: container.value);
                                          }
                                        },
                                        text: 'Submit',
                                        textStyle: FITextStyle.xsMBold.copyWith(color: Colors.white),
                                      ).paddingAll(5),
                                    ),
                                    bottomSheetWidget: Container(
                                      color: Colors.grey.shade200,
                                      child: Form(
                                        key: _formKey,
                                        child: SingleChildScrollView(
                                            child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            FITextInput(
                                              labelText: 'Truck No.',
                                              labelTextStyle: FITextStyle.xxxxs.copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey),
                                              isRequired: true,
                                              controller: truckNo,
                                              validationMessage: 'Required Truck Number',
                                              autoValidateMode: AutovalidateMode.onUserInteraction,
                                            ).paddingOnly(top: 10),
                                            FIText(text: 'Truck Type', isRequired: true, textStyle: FITextStyle.xxxxs.copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey))
                                                .paddingSymmetric(horizontal: 15),
                                            DropdownButtonHideUnderline(
                                                child: Obx(() => DropdownButton2(
                                                    isExpanded: true,
                                                    hint: FIText(text: 'Select', textStyle: FITextStyle.xxxsMBold, textOverflow: TextOverflow.ellipsis),
                                                    items: controller.truckTypeList.value
                                                        .map((item) => DropdownMenuItem<String>(
                                                            value: item?.id.toString() ?? '',
                                                            child: Text(item?.name ?? '', style: FITextStyle.xxxsMBold, maxLines: 2, overflow: TextOverflow.ellipsis)))
                                                        .toList(),
                                                    value: truckType.value == '' ? null : truckType.value,
                                                    onChanged: (value) => truckType.value = value.toString(),
                                                    buttonStyleData: ButtonStyleData(
                                                        height: 50,
                                                        width: 100.w,
                                                        padding: const EdgeInsets.only(left: 14, right: 14),
                                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white)),
                                                    iconStyleData: IconStyleData(
                                                        icon: const Icon(Icons.keyboard_arrow_down_rounded), iconSize: 24, iconEnabledColor: Colors.red, iconDisabledColor: Colors.grey),
                                                    dropdownStyleData: DropdownStyleData(
                                                        maxHeight: 35.h,
                                                        padding: null,
                                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                                                        elevation: 8,
                                                        scrollbarTheme: ScrollbarThemeData(
                                                            radius: const Radius.circular(10),
                                                            thickness: MaterialStateProperty.all<double>(4),
                                                            thumbVisibility: MaterialStateProperty.all<bool>(true))),
                                                    menuItemStyleData: const MenuItemStyleData(height: 40, padding: EdgeInsets.only(left: 14, right: 14))))).paddingSymmetric(vertical: 5).paddingOnly(
                                                bottom: 15),
                                            FIText(text: 'Truck Capacity', isRequired: true, textStyle: FITextStyle.xxxxs.copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey))
                                                .paddingSymmetric(horizontal: 15),
                                            DropdownButtonHideUnderline(
                                                child: Obx(() => DropdownButton2(
                                                    isExpanded: true,
                                                    hint: FIText(text: 'Select', textStyle: FITextStyle.xxxsMBold, textOverflow: TextOverflow.ellipsis),
                                                    items: controller.truckCapacityList.value
                                                        .map((item) => DropdownMenuItem<String>(
                                                            value: item?.id.toString() ?? '',
                                                            child: Text(item?.name ?? '', style: FITextStyle.xxxsMBold, maxLines: 2, overflow: TextOverflow.ellipsis)))
                                                        .toList(),
                                                    value: truckCapacity.value == '' ? null : truckCapacity.value,
                                                    onChanged: (value) => truckCapacity.value = value.toString(),
                                                    buttonStyleData: ButtonStyleData(
                                                        height: 50,
                                                        width: 100.w,
                                                        padding: const EdgeInsets.only(left: 14, right: 14),
                                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white)),
                                                    iconStyleData: IconStyleData(
                                                        icon: const Icon(Icons.keyboard_arrow_down_rounded), iconSize: 24, iconEnabledColor: Colors.red, iconDisabledColor: Colors.grey),
                                                    dropdownStyleData: DropdownStyleData(
                                                        maxHeight: 35.h,
                                                        padding: null,
                                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                                                        elevation: 8,
                                                        scrollbarTheme: ScrollbarThemeData(
                                                            thumbColor: MaterialStateProperty.all(Colors.red),
                                                            radius: const Radius.circular(10),
                                                            thickness: MaterialStateProperty.all<double>(4),
                                                            thumbVisibility: MaterialStateProperty.all<bool>(true))),
                                                    menuItemStyleData: const MenuItemStyleData(height: 40, padding: EdgeInsets.only(left: 14, right: 14))))).paddingSymmetric(vertical: 5).paddingOnly(
                                                bottom: 15),
                                            FITextInput(
                                              labelText: 'Container No.',
                                              labelTextStyle: FITextStyle.xxxxs.copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey),
                                        
                                              controller: containerNo,
                                            
                                              // autoValidateMode: AutovalidateMode.onUserInteraction,
                                            ),
                                            FIText(text: 'Container', textStyle: FITextStyle.xxxxs.copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey))
                                                .paddingSymmetric(horizontal: 15),
                                            DropdownButtonHideUnderline(
                                                child: Obx(() => DropdownButton2(
                                                    isExpanded: true,
                                                    hint: FIText(text: 'Select', textStyle: FITextStyle.xxxsMBold, textOverflow: TextOverflow.ellipsis),
                                                    items: controller.containerList.value
                                                        .map((item) => DropdownMenuItem<String>(
                                                            value: item?.id.toString() ?? '',
                                                            child: Text(item?.name ?? '', style: FITextStyle.xxxsMBold, maxLines: 2, overflow: TextOverflow.ellipsis)))
                                                        .toList(),
                                                    value: container.value == '' ? null : container.value,
                                                    onChanged: (value) => container.value = value.toString(),
                                                    buttonStyleData: ButtonStyleData(
                                                        height: 50,
                                                        width: 100.w,
                                                        padding: const EdgeInsets.only(left: 14, right: 14),
                                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white)),
                                                    iconStyleData: IconStyleData(
                                                        icon: const Icon(Icons.keyboard_arrow_down_rounded), iconSize: 24, iconEnabledColor: Colors.red, iconDisabledColor: Colors.grey),
                                                    dropdownStyleData: DropdownStyleData(
                                                        maxHeight: 35.h,
                                                        padding: null,
                                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                                                        elevation: 8,
                                                        scrollbarTheme: ScrollbarThemeData(
                                                            thumbColor: MaterialStateProperty.all(Colors.red),
                                                            radius: const Radius.circular(10),
                                                            thickness: MaterialStateProperty.all<double>(4),
                                                            thumbVisibility: MaterialStateProperty.all<bool>(true))),
                                                    menuItemStyleData: const MenuItemStyleData(height: 40, padding: EdgeInsets.only(left: 14, right: 14))))).paddingSymmetric(vertical: 5).paddingOnly(
                                                bottom: 15),
                                            FITextInput(
                                              labelText: 'Seal No.',
                                              labelTextStyle: FITextStyle.xxxxs.copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey),
                                              // isRequired: true,
                                              controller: sealNo,
                                              // validationMessage: 'Required Seal Number',
                                              // autoValidateMode: AutovalidateMode.onUserInteraction,
                                            ),
                                            FITextInput(
                                              labelText: 'Driver Name',
                                              labelTextStyle: FITextStyle.xxxxs.copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey),
                                              isRequired: true,
                                              controller: driverName,
                                              validationMessage: 'Required Driver Name',
                                              autoValidateMode: AutovalidateMode.onUserInteraction,
                                            ),
                                            FITextInput(
                                              labelText: 'Mobile No.',
                                              labelTextStyle: FITextStyle.xxxxs.copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey),
                                              isRequired: true,
                                              controller: driverNo,
                                              validationMessage: 'Required Mobile Number',
                                              autoValidateMode: AutovalidateMode.onUserInteraction,
                                              textInputType: TextInputType.number,
                                            ),
                                          ],
                                        )).paddingSymmetric(horizontal: 5, vertical: 10),
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
                            ).paddingSymmetric(horizontal: 5),
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
                          ]).paddingOnly(bottom: 15),
                          // _buildKeyValueAlign(key: 'GRN', value: '${item.grn_name ?? ''}'),
                          controller.appCtrl.buildKeyValueAlign(key: 'Document', color: Colors.red.shade700, value: '${item.picking_name ?? ''}'),
                        ]).paddingAll(5).paddingSymmetric(vertical: 10),
                      )).paddingSymmetric(vertical: 5),
                ),
              ],
            ],
            // SizedBox(height: 80.h),
          ],
        ));
}
