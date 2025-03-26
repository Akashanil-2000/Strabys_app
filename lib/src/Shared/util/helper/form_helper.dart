import 'package:css_stranbys/src/Dashboard/dashboard_controller.dart';
import 'package:css_stranbys/src/Shared/util/helper/common_helper.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_button_primary.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_loader_indicator.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_scaffold.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_text.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_text_input.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../Delivery Order/delivery_order_screen.dart';
import '../theme/theme_constant.dart';

class FormHelper extends GetView<DashboardController> {
  const FormHelper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _navigateToDeliveryOrder();
        return false;
      },
      child: FIScaffold(
        isLeadingEnabled: false,
        isAppBarPinned: false,
        onRefresh: () async => controller.loadData(),
        customSuffixIcon: IconButton(
          onPressed: () async {
            controller.isLoading(true);
            await controller.appCtrl.logOut();
            controller.isLoading(false);
          },
          icon: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.power_settings_new_rounded, color: Colors.red.shade600),
          ),
        ),
        child: Obx(() {
          if (controller.isLoading.isTrue) {
            return const FILoaderIndicator().paddingSymmetric(vertical: 25);
          }
          return _buildFormContent(context);
        }),
      ),
    );
  }

  Widget _buildFormContent(BuildContext context) {
    var truckNo = TextEditingController();
    var truckType = ''.obs;
    var truckCapacity = ''.obs;
    var containerNo = TextEditingController();
    var totalQty = TextEditingController();
    var container = ''.obs;
    var sealNo = TextEditingController();
    var driverName = TextEditingController();
    var driverNo = TextEditingController();
    final _formKey = GlobalKey<FormState>();

    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with close button
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: _navigateToDeliveryOrder,
                ),
                SizedBox(width: 8),
                Text(
                  'Add Truck Details',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Divider(),

            // Form fields
            FITextInput(
              labelText: 'Truck No.',
              labelTextStyle: TextStyle(color: Colors.black, fontSize: 14),
              hintText: 'Enter truck number',
              isRequired: true,
              controller: truckNo,
              validationMessage: 'Required Truck Number',
              autoValidateMode: AutovalidateMode.onUserInteraction,
            ).paddingOnly(top: 10),

            FITextInput(
              labelText: 'Truck No.',
              labelTextStyle: TextStyle(color: Colors.black, fontSize: 14), // Adjust label style,
              hintText: 'Enter truck number',
              isRequired: true,
              controller: truckNo,
              validationMessage: 'Required Truck Number',
              autoValidateMode: AutovalidateMode.onUserInteraction,

            ).paddingOnly(top: 10),
            FIText(
                text: 'Truck Type ',
                isRequired: true,
                textStyle: FITextStyle.xxxxs.copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey))
                .paddingSymmetric(horizontal: 15),
            DropdownButtonHideUnderline(
                child: Obx(() => DropdownButton2(
                    isExpanded: true,
                    hint: FIText(text: 'Select', textStyle: FITextStyle.xxxsMBold, textOverflow: TextOverflow.ellipsis),
                    items: controller.truckTypeList.value
                        .map((item) => DropdownMenuItem<String>(
                        value: item.id.toString() ?? '',
                        child: Text(item.name ?? '', style: FITextStyle.xxxsMBold, maxLines: 2, overflow: TextOverflow.ellipsis)))
                        .toList(),
                    value: truckType.value == '' ? null : truckType.value,
                    onChanged: (value) => truckType.value = value.toString(),
                    buttonStyleData: ButtonStyleData(
                        height: 50,
                        width: 100.w,
                        padding: const EdgeInsets.only(left: 14, right: 14),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white)),
                    iconStyleData: IconStyleData(
                        icon: const Icon(Icons.keyboard_arrow_down_rounded),
                        iconSize: 24,
                        iconEnabledColor: Colors.red,
                        iconDisabledColor: Colors.grey),
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
                    menuItemStyleData: const MenuItemStyleData(height: 40, padding: EdgeInsets.only(left: 14, right: 14)))))
                .paddingSymmetric(vertical: 5)
                .paddingOnly(bottom: 15),
            FIText(
                text: 'Truck Capacity',
                isRequired: true,
                textStyle: FITextStyle.xxxxs.copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey))
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
                        icon: const Icon(Icons.keyboard_arrow_down_rounded),
                        iconSize: 24,
                        iconEnabledColor: Colors.red,
                        iconDisabledColor: Colors.grey),
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
                    menuItemStyleData: const MenuItemStyleData(height: 40, padding: EdgeInsets.only(left: 14, right: 14)))))
                .paddingSymmetric(vertical: 5)
                .paddingOnly(bottom: 15),

            FIText(
                text: 'Enable Container Details',
                textStyle: FITextStyle.xxxxs.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey
                )
            ).paddingSymmetric(horizontal: 15),

            Obx(() => Switch(
              value: controller.isContainerDetailsEnabled.value,
              onChanged: (value) {
                controller.isContainerDetailsEnabled.value = value;
              },
            )),

            Obx((){
              if (controller.isContainerDetailsEnabled.value){
                return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FITextInput(
                        labelText: 'Container No.',
                        hintText: 'Enter container number',
                        labelTextStyle: FITextStyle.xxxxs.copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey),
                        controller: containerNo,
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
                                  icon: const Icon(Icons.keyboard_arrow_down_rounded),
                                  iconSize: 24,
                                  iconEnabledColor: Colors.red,
                                  iconDisabledColor: Colors.grey),
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
                              menuItemStyleData: const MenuItemStyleData(height: 40, padding: EdgeInsets.only(left: 14, right: 14)))))
                          .paddingSymmetric(vertical: 5)
                          .paddingOnly(bottom: 15),
                      FITextInput(
                        labelText: 'Seal No.',
                        hintText: 'Enter truck number',
                        labelTextStyle: FITextStyle.xxxxs.copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey),
                        controller: sealNo,
                      ),
                      FITextInput(
                        labelText: 'Driver Name',
                        hintText: 'Enter truck number',
                        labelTextStyle: FITextStyle.xxxxs.copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey),
                        isRequired: true,
                        controller: driverName,
                        validationMessage: 'Required Driver Name',
                        autoValidateMode: AutovalidateMode.onUserInteraction,
                      ),
                      FITextInput(
                        labelText: 'Mobile No.',
                        hintText: 'Enter truck number',
                        labelTextStyle: FITextStyle.xxxxs.copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey),
                        isRequired: true,
                        controller: driverNo,
                        validationMessage: 'Required Mobile Number',
                        autoValidateMode: AutovalidateMode.onUserInteraction,
                        textInputType: TextInputType.number,
                      ),
                      FITextInput(
                        labelText: 'Total Quantity',
                        hintText: 'Enter truck number',
                        labelTextStyle: FITextStyle.xxxxs.copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey),
                        controller: totalQty,
                        textInputType: TextInputType.number,
                      ),

                    ]
                );
              }else{
                return SizedBox.shrink();
              }
            }),

            SizedBox(height: 20),
            FIButtonPrimary(
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  if (truckType.value.isEmpty || truckCapacity.value.isEmpty) {
                    showSnackBar(message: 'Please fill all required fields');
                  } else {
                    controller.submitTruckDetails(
                      driverName: driverName.text,
                      mobileNo: driverNo.text,
                      truckNo: truckNo.text,
                      totalQty: totalQty.text,
                      sealNo: sealNo.text,
                      containerNo: containerNo.text,
                      truckTypeId: truckType.value,
                      truckCapacityId: truckCapacity.value,
                      containerTypeId: container.value,
                    );
                    _navigateToDeliveryOrder();
                  }
                }
              },
              text: 'Save',
              textStyle: FITextStyle.xsMBold.copyWith(color: Colors.white),
            ).paddingSymmetric(vertical: 16),
          ],
        ),
      ),
    );
  }

  void _navigateToDeliveryOrder() {
    Get.back(); // Close current screen
    Get.to(() => DeliveryOrderScreen());
  }
}